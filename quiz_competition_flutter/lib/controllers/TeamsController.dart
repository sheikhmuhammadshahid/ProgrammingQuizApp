import 'package:get/get.dart';
import 'package:quiz_competition_client/quiz_competition_client.dart';
import 'package:quiz_competition_flutter/main.dart';

import 'question_controller.dart';

class TeamsController extends GetxController {
  List<OnGoingTeams> ongoingTeams = [];
  // RxInt connectedTeams = (-1).obs;
  // getTeamsDetail() async {
  //   print('aerwnnwne');
  //   ongoingTeams.value = await client.members
  //       .getMembersDetail(eventId: Get.find<QuestionController>().eventId);
  //   print(ongoingTeams);
  //   // connectedTeams.value = 0;

  //   // connectedTeams.value = ongoingTeams.length;
  // }
}
