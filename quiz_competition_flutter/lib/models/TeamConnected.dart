import 'package:get/get.dart';
import 'package:quiz_competition_client/quiz_competition_client.dart';

class TeamConnected extends GetxController {
  late TeamModel team;
  RxString status = 'pending'.obs;
}
