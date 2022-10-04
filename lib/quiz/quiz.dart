import 'package:final_project/quiz/quiz1.dart';
import 'package:final_project/quiz/quiz2.dart';
import 'package:final_project/quiz/storage.dart';
import 'package:final_project/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);

  var saveStorage1 = question1;
  var saveStorage2 = question2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Colors.orange[50],
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => Main_screen())));
              },
              icon: Icon(Icons.arrow_back_outlined, color: Colors.black)),
          Card(
            //borderRadius: BorderRadius.circular(13),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Material(
                child: InkWell(
                    highlightColor: Colors.purple,
                    splashColor: Colors.purple,
                    onTap: () {
                      //Navigator.of(context).push(MaterialPageRoute(
                      //builder: ((context) => Morning())));
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => QuizPage1())));
                    },
                    child: Ink(
                      padding: EdgeInsets.all(5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/image9.png",
                              height: 150,
                              width: 200,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              //fit: BoxFit.fitWidth,
                              width: 129,
                              child: Text(
                                "Finding Objects",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ]),
                      color: Colors.orange[400],
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            //borderRadius: BorderRadius.circular(13),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Material(
                child: InkWell(
                    highlightColor: Colors.purple,
                    splashColor: Colors.purple,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => QuizPage2())));
                    },
                    child: Ink(
                      padding: EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/image8.jpg",
                              height: 150,
                              width: 200,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              //fit: BoxFit.fitWidth,
                              width: 129,
                              child: Text(
                                "Finding Fruits",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ]),
                      color: Colors.orange[400],
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
