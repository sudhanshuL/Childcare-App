import 'package:final_project/quiz/quiz.dart';
import 'package:flutter/material.dart';

class QuizPage1 extends StatefulWidget {
  //const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage1> createState() => _QuizPage1State();
}

class _QuizPage1State extends State<QuizPage1> {
  var index = 0;
  var Score = 0;
  var question1 = [
    {
      'questionsText': 'Name the Object',
      'img':
          "https://imgd.aeplcdn.com/370x208/n/cw/ec/54399/exterior-right-front-three-quarter-10.jpeg?q=75",
      'answers': [
        {"text": "Car", "score": 10},
        {"text": "Bus", "score": 0},
        {"text": "Cycle", "score": 0},
        {"text": "Bike", "score": 0}
      ]
    },
    {
      'questionsText': 'Name the Object',
      'img':
          "https://media.istockphoto.com/photos/white-passenger-bus-picture-id135327019?k=20&m=135327019&s=612x612&w=0&h=YJneXYFReSVuKSIFOy5wGIygeLeb1UquX4BWLk-MluI=",
      'answers': [
        {"text": "Car", "score": 0},
        {"text": "Bus", "score": 10},
        {"text": "Cycle", "score": 0},
        {"text": "Bike", "score": 0}
      ]
    },
    {
      'questionsText': 'Name the Object',
      'img': "https://i.insider.com/5cbf50dfd1a2f8074406a8b2?width=700",
      'answers': [
        {"text": "Car", "score": 0},
        {"text": "Red", "score": 0},
        {"text": "Mango", "score": 0},
        {"text": "Ship", "score": 10}
      ]
    },
    {
      'questionsText': 'Name the Object',
      'img':
          "https://www.ikea.com/in/en/images/products/ekedalen-extendable-table-dark-brown__0736963_pe740827_s5.jpg",
      'answers': [
        {"text": "Black", "score": 0},
        {"text": "Chair", "score": 0},
        {"text": "Yellow", "score": 0},
        {"text": "Table", "score": 10}
      ]
    },
    {
      'questionsText': 'Name the Object',
      'img':
          "https://www.thoughtco.com/thmb/RQa7PCRIvyeuDFv_reINweTGfVI=/1885x1414/smart/filters:no_upscale()/GettyImages-1097037546-35e5377d07704fa69c8ce93833b7afdd.jpg",
      'answers': [
        {"text": "Glass", "score": 0},
        {"text": "Kitchen", "score": 0},
        {"text": "Spoon", "score": 10},
        {"text": "white", "score": 0}
      ]
    },
  ];

  Widget ques(text) {
    //print(ques)
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  Widget img(x) {
    return Container();
  }

  Widget answer(text, int score) {
    //finalScore = (finalScore + score);
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.orange,
          width: double.infinity,
          child: TextButton(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              Score = Score + score;
              setState(() {
                print(Score);
                print(index);
                index = index + 1;
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //print(question1[index]["answers"]![0].toString());
    print("jkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
    //print(widget.question1);
    //print(widget.question1);
    return Scaffold(
        backgroundColor: Colors.orange[50],
        body: index == 5
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Text(
                      "Your score is ${Score}",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: ((context) => Quiz())));
                        },
                        child: Text(
                          "Back to  quiz options",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              )
            : Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    ques(question1[index]["questionsText"].toString()),
                    // Text(question1[index]["questionsText"].toString()),
                    SizedBox(
                      height: 10,
                    ),

                    Image.network(question1[index]["img"].toString()),
                    SizedBox(
                      height: 15,
                    ),
                    ...(question1[index]["answers"] as List).map((answe) {
                      return Container(
                        child: answer(answe["text"].toString(), answe["score"]),
                        //child: Text(answe["text"].toString()),
                      );
                    }).toList()
                  ],
                ),
              ));
  }
}
