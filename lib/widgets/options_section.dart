import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testbook/constants/colors.dart';

class OptionsSection extends StatelessWidget {
  const OptionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFf0f8e9),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.description_outlined,
                              color: Color(0xFF66b34b),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "● Live Test",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFf2ecf8),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.contact_support_outlined,
                              color: Color(0xFF784883),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Quizzes",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFfae5e8),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.settings_backup_restore_outlined,
                              color: Color(0xFFcf333b),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Practice",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFedeaf1),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.newspaper_outlined,
                              color: Color(0xFF534d87),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "GK and CA",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFf3f1ff),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.quiz,
                              color: Color(0xFF8872e0),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Doubts",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFfff4e3),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.play_circle_outline_rounded,
                              color: Color(0xFFdb8c28),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "● Live Class",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFe4f4fd),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.receipt_outlined,
                              color: Color(0xFF61a5bb),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "    Pass    ",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFffefe6),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.bookmark_outline,
                              color: Color(0xFFdb6c42),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "    Saved    ",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFf0f4ff),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.pending_actions_outlined,
                              color: Color(0xFF839ef3),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        " Exams ",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFfff2e9),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.assignment_return_outlined,
                              color: Color(0xFFdab772),
                              size: 28,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Prev Papers",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ]),
    );
  }
}
