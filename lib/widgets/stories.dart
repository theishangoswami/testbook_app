import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class HeaderStories extends StatelessWidget {
  const HeaderStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5.0,
      ),
      child: Stories(
        circlePadding: 0,
        borderThickness: 3.5,
        spaceBetweenStories: 10,
        storyItemList: [
          StoryItem(
              name: "Testbook",
              thumbnail: const NetworkImage(
                "https://startupxplore.com/uploads/ff8080816b63c687016b655f320e0073-large.png",
              ),
              stories: [
                Scaffold(
                  body: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://play-lh.googleusercontent.com/eRl9qxP5vRXc_7929GplA4xA16V_riSEwbHNlH-LR3NRPGrtuIk23NSRMWnztFUk0g=w800-h500",
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(),
                Scaffold(),
                Scaffold(),
                Scaffold(),
              ]),
          StoryItem(
            name: "Winners",
            thumbnail: const NetworkImage(
              "https://www.shareicon.net/data/512x512/2017/03/29/881758_cup_512x512.png",
            ),
            stories: [
              Scaffold(
                body: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://i.pinimg.com/originals/31/bc/a9/31bca95ba39157a6cbf53cdf09dda672.png",
                      ),
                    ),
                  ),
                ),
              ),
              const Scaffold(
                backgroundColor: Colors.black,
                body: Center(
                  child: Text(
                    "That's it, Folks !",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          StoryItem(
              name: "Azadi Ut...",
              thumbnail: const NetworkImage(
                "https://img.freepik.com/free-vector/indian-flag-theme-independence-day-decorative-background-vector_1055-10866.jpg?w=2000",
              ),
              stories: []),
          StoryItem(
              name: "Skill Aca...",
              thumbnail: const NetworkImage(
                "https://i.ytimg.com/vi/ZH7uz6Wk8wk/maxresdefault.jpg",
              ),
              stories: []),
          StoryItem(
              name: "76th year",
              thumbnail: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxwjIurQxmLkizD7iKLYgTnE6nHCmcr83cpw&usqp=CAU",
              ),
              stories: []),
        ],
      ),
    );
  }
}
