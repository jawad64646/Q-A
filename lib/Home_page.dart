import 'dart:math';

import 'package:flutter/material.dart';
import 'data.dart';
import 'main.dart';
class hO extends StatefulWidget {
  const hO({super.key});

  @override
  State<hO> createState() => _hOState();
}

class _hOState extends State<hO> {
  int? text;


  String answer="";
final Random rand=new Random();
  String correction="";
  List<String> keysList = questions.keys.toList();
  List<String> valuesList = questions.values.toList();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Color correctionColor;
    if (correction == "Correct") {
      correctionColor = Colors.green;
    } else if (correction == "Wrong" || correction == "TRY AGAIN") {
      correctionColor = Colors.red;
    } else {
      correctionColor = Colors.black;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QUESTION AND ANSWER APP",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                keysList[index],

                style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hint: Text(
                      "ENTER YOUR ANSWER",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(77),
                      borderSide: BorderSide(
                        width: 20,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    answer = value;
                  },
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
        if (questions[keysList[index]]!.toLowerCase() ==
        answer.toLowerCase()) {
        correction = "Correct";
        } else {
        correction = "Wrong";
        }
        setState(() {});
        },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: const Text("Check Question"),
                  ),

                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed:  () {
                      if (correction == "Correct") {
                        if (index < keysList.length - 1) {
                          index = rand.nextInt(keysList.length);
                          correction="";
                        }
                      } else {
                        correction = "TRY AGAIN";
                      }
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: const Text("Next Question"),
                  ),
                ],
              ),
              SizedBox(height: 40),

              Text(correction, textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
