import 'package:final_project/quiz/quiz.dart';
import 'package:flutter/material.dart';

class QuizPage2 extends StatefulWidget {
  //const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage2> createState() => _QuizPage2State();
}

class _QuizPage2State extends State<QuizPage2> {
  var index = 0;
  var Score = 0;
  var question1 = [
    {
      'questionsText': 'Name the fruit',
      'img':
          "https://media.istockphoto.com/photos/red-apple-picture-id184276818?k=20&m=184276818&s=612x612&w=0&h=QxOcueqAUVTdiJ7DVoCu-BkNCIuwliPEgtAQhgvBA_g=",
      'answers': [
        {"text": "Apple", "score": 10},
        {"text": "Mango", "score": 0},
        {"text": "Grapes", "score": 0},
        {"text": "Strawberry", "score": 0}
      ]
    },
    {
      'questionsText': 'Name the fruit',
      'img':
          "https://www.jiomart.com/images/product/600x600/590000042/sonaka-seedless-grapes-1-kg-product-images-o590000042-p590116962-0-202203142035.jpg",
      'answers': [
        {"text": "Apple", "score": 0},
        {"text": "Mango", "score": 0},
        {"text": "Grapes", "score": 10},
        {"text": "Strawberry", "score": 0}
      ]
    },
    {
      'questionsText': 'Name the fruit',
      'img':
          "https://media.istockphoto.com/photos/strawberries-picture-id173888437?b=1&k=20&m=173888437&s=170667a&w=0&h=GVf5UfTj-ciz-TkMz6Jcyt04psqmIjw2Uw2d7Hu1z_w=",
      'answers': [
        {"text": "Apple", "score": 0},
        {"text": "Mango", "score": 0},
        {"text": "Grapes", "score": 0},
        {"text": "Strawberry", "score": 10}
      ]
    },
    {
      'questionsText': 'Name the fruit',
      'img':
          "https://plantogram.com/wa-data/public/shop/products/55/06/655/images/1256/1256.750@2x.jpg",
      'answers': [
        {"text": "Apple", "score": 0},
        {"text": "Mango", "score": 10},
        {"text": "Grapes", "score": 0},
        {"text": "Strawberry", "score": 0}
      ]
    },
    {
      'questionsText': 'Name the fruit',
      'img':
          "https://www.gardeningknowhow.com/wp-content/uploads/2021/05/whole-and-slices-watermelon.jpg",
      'answers': [
        {"text": "Apple", "score": 0},
        {"text": "Mango", "score": 0},
        {"text": "Watermelon", "score": 10},
        {"text": "Strawberry", "score": 0}
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
