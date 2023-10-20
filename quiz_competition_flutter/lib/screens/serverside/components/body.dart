import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_competition_flutter/Client/ClientDetails.dart';

import '../../../constants.dart';
import '../../../controllers/EventsController.dart';
import '../../../controllers/TeamsController.dart';
import '../../../controllers/question_controller.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatefulWidget {
  late String round;
  Body({
    required this.round,
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  QuestionController controller = Get.find<QuestionController>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getqus();
  }

  getqus() async {
    // await controller.getQuestions(widget.round);

    // setState(() {
    //   isLoading = false;
    // });
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController questionController;
    TeamsController teamsController;
    EventController eventController;

    questionController = Get.find<QuestionController>();

    teamsController = Get.find<TeamsController>();

    eventController = Get.find<EventController>();

    return !isLoading
        ? Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text.rich(
                          TextSpan(
                            text:
                                "Question ${context.watch<ClientProvider>().questionNo}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: kSecondaryColor),
                            children: [
                              TextSpan(
                                text:
                                    "/${context.watch<ClientProvider>().questions.length}sdsd",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: kSecondaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10.0),
                      //   child: SizedBox(
                      //     height: 40,
                      //     width: 80,
                      //     child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         elevation: 5,
                      //         backgroundColor:
                      //             const Color.fromARGB(255, 206, 198, 247)
                      //                 .withOpacity(.9),
                      //       ),
                      //       onPressed: controller.nextQuestion,
                      //       child: Text(
                      //         "Skip",
                      //         style: GoogleFonts.montserrat(
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.black,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  const Divider(thickness: 1.5),
                  const SizedBox(height: kDefaultPadding),
                  Row(
                    children: [
                      SizedBox(
                        height: 420,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: PageView.builder(
                          // Block swipe to next qn
                          physics: const NeverScrollableScrollPhysics(),
                          controller: questionController.pageController,
                          // onPageChanged: questionController.updateTheQnNum,
                          itemCount: questionController.questions.length,
                          itemBuilder: (context, index) => QuestionCard(
                              question: questionController.questions[index]),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GridView.builder(
                              itemCount: context
                                  .watch<ClientProvider>()
                                  .ongoingTeams
                                  .length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      childAspectRatio: 1 / 0.8,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 0),
                              itemBuilder: (context, index) {
                                return Obx(
                                  () {
                                    return GestureDetector(
                                      onTap: () {
                                        context
                                            .read<ClientProvider>()
                                            .animationController!
                                            .repeat();
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            eventController.teamName.value !=
                                                    context
                                                        .read<ClientProvider>()
                                                        .ongoingTeams[index]
                                                        .team
                                                        .teamName
                                                ? const Color.fromARGB(
                                                        255, 206, 198, 247)
                                                    .withOpacity(0.3)
                                                : Colors.green,
                                        radius: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text(
                                              context
                                                  .read<ClientProvider>()
                                                  .ongoingTeams[index]
                                                  .team
                                                  .teamName,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
