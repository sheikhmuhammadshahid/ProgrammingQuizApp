import 'package:quiz_competition_server/src/generated/MemberClass.dart';
import 'package:quiz_competition_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class MembersEndpoint extends Endpoint {
  Future<bool> addMembers(Session session,
      {required List<MemberModel> members, required int teamId}) async {
    try {
      for (var element in members) {
        await MemberModel.insert(session, element);
        MemberModel members =
            (await MemberModel.find(session, orderDescending: true)).first;
        await TeamInfoModel.insert(
            session, TeamInfoModel(teamId: teamId, memberId: members.id!));
        return true;
      }
    } catch (e) {}
    return false;
  }

  Future<bool> deleteMember(Session session, {required int memberId}) async {
    try {
      await MemberModel.delete(session, where: (p0) => p0.id.equals(memberId));
      await TeamInfoModel.delete(
        session,
        where: (p0) => p0.memberId.equals(memberId),
      );
      return true;
    } catch (e) {}
    return false;
  }

  Future<List<OnGoingTeams>> getMembersDetail(Session session,
      {required int eventId}) async {
    List<OnGoingTeams> ongoingTeams = [];
    try {
      List<EventDetail> teams = (await EventDetail.find(
        session,
        where: (p0) => p0.eventId.equals(eventId),
      ));

      for (var element in teams) {
        OnGoingTeams onGoingTeam = OnGoingTeams(
            members: [],
            team: (await TeamModel.find(
              session,
              where: (p0) => p0.id.equals(element.id),
            ))
                .first,
            teamId: element.teamId);
        List<TeamInfoModel> teaminfos = (await TeamInfoModel.find(
          session,
          where: (p0) => p0.teamId.equals(element.teamId),
        ));

        for (var element in teaminfos) {
          onGoingTeam.members
              .add((await MemberModel.findById(session, element.memberId))!);
        }
        ongoingTeams.add(onGoingTeam);
      }
    } catch (e) {}
    print('on going teams------');
    print(ongoingTeams);
    return ongoingTeams;
  }

  Future<bool> addTeam(Session session,
      {required List<OnGoingTeams> teams, required int eventId}) async {
    try {
      for (var element in teams) {
        TeamModel teamModel = TeamModel(
            teamName: element.team.teamName,
            teamType: element.team.teamType,
            scores: 0,
            totalMembers: 0,
            buzzerRound: 0,
            mcqRound: 0,
            rapidRound: 0,
            buzzerWrong: 0);

        await TeamModel.insert(session, teamModel);

        teamModel =
            (await TeamModel.find(session, orderDescending: true)).first;

        await EventDetail.insert(
            session, EventDetail(eventId: eventId, teamId: teamModel.id!));
        addMembers(session, members: element.members, teamId: teamModel.id!);
      }
      print('-----adddeedddddd');
      return true;
    } catch (e) {
      print('------adding Teams--------');
      print(e);
    }
    return false;
  }
}
