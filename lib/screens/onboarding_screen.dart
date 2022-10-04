import 'package:final_project/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth_screen.dart';

class onBoard extends StatefulWidget {
  const onBoard({Key? key}) : super(key: key);

  @override
  State<onBoard> createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {
  final controller = PageController();
  var lastPage = 0;
  Widget buildPage(img, heading, text) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Image.asset(
            '$img',
            height: 300,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "$heading",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[800]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            //color: Colors.amber,
            //alignment: Alignment.center,
            padding: EdgeInsets.all(25),
            child: Center(
              child: Text("$text",
                  style: GoogleFonts.raleway(
                      fontSize: 17, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              if (index == 2) {
                lastPage = 2;
              }
            });
          },
          children: [
            buildPage("assets/image1.png", "Ask Teachers",
                "Parents can ask their questions to parents and teachers "),
            buildPage("assets/image2.png", "Manage Activities ",
                "With this app students can manage their daily Activities"),
            buildPage("assets/image1.png", "Quiz",
                "With this app students can take quiz to strengthen their different areas")
          ],
        ),
      ),
      bottomSheet: lastPage == 2
          ? Container(
              height: 80,
              width: double.infinity,
              color: Colors.indigo[800],
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: ((context) => Auth())));
                  },
                  child: Text(
                    "Get started",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            )
          : Container(
              padding: EdgeInsets.all(10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        "Previous",
                        style:
                            TextStyle(fontSize: 20, color: Colors.indigo[800]),
                      )),
                  Center(
                    child:
                        SmoothPageIndicator(controller: controller, count: 3),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        "Next",
                        style:
                            TextStyle(fontSize: 20, color: Colors.indigo[800]),
                      )),
                ],
              ),
            ),
    );
  }
}
