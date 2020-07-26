import 'package:kbc/FirstScreen.dart';
import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  final amount;
  final quesAttempted;
  final finalQues;
  final finalOpt1;
  final finalOpt2;
  final finalOpt3;
  final finalOpt4;
  final finalAns;
  final int isQuit;
  FinalPage(
      this.amount,
      this.quesAttempted,
      this.finalQues,
      this.finalOpt1,
      this.finalOpt2,
      this.finalOpt3,
      this.finalOpt4,
      this.finalAns,
      this.isQuit);

  @override
  _FinalPageState createState() => _FinalPageState(amount, quesAttempted,
      finalQues, finalOpt1, finalOpt2, finalOpt3, finalOpt4, finalAns, isQuit);
}

class _FinalPageState extends State<FinalPage> {
  final amount;
  final quesAttempted;
  final finalQues;
  final finalOpt1;
  final finalOpt2;
  final finalOpt3;
  final finalOpt4;
  final finalAns;
  final int isQuit;
  _FinalPageState(
    this.amount,
    this.quesAttempted,
    this.finalQues,
    this.finalOpt1,
    this.finalOpt2,
    this.finalOpt3,
    this.finalOpt4,
    this.finalAns,
    this.isQuit,
  );
  int wAmount;
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kaun Banega Crorepati"),
        centerTitle: true,
      ),
      body: finalQues.length == 0
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Center(
                  //     child:Text(msg99+"${user?.displayName}",textScaleFactor: 2,style: TextStyle(color:Colors.white,backgroundColor: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                  //   ),
                  // ),
                  Expanded(
                      child: Center(
                          child: isQuit == 0
                              ? Text(
                                  "Total Amount: ₹ $wAmount",
                                  textScaleFactor: 2,
                                )
                              : Text(
                                  "Total Amount: ₹ $amount",
                                  textScaleFactor: 2,
                                ))),
                  Expanded(
                      child: Center(
                          child: Text("Questions Attempted: $quesAttempted",
                              textScaleFactor: 2))),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new LetsPlay())),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.lightGreen),
                          child: Center(
                              child: Text("Play Again", textScaleFactor: 2))),
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: finalQues.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          child: Text(
                        (index + 1).toString() + ". " + finalQues[index],
                        textScaleFactor: 2,
                      )),
                      Container(
                          child: Text(
                        "1." + finalOpt1[index],
                        textScaleFactor: 2,
                      )),
                      Container(
                          child: Text(
                        "2." + finalOpt2[index],
                        textScaleFactor: 2,
                      )),
                      Container(
                          child: Text(
                        "3." + finalOpt3[index],
                        textScaleFactor: 2,
                      )),
                      Container(
                          child: Text(
                        "4." + finalOpt4[index],
                        textScaleFactor: 2,
                      )),
                      Container(
                          child: Text(
                        "Ans: " + finalAns[index],
                        textScaleFactor: 2,
                        style: TextStyle(
                            color: Colors.green,
                            backgroundColor: Colors.red[100]),
                      )),
                      Divider(),
                  //    index==finalQues.length-1? Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Center(
                  //     child:Text(msg99+" "+"${user?.displayName}",textScaleFactor: 2,style: TextStyle(color:Colors.white,backgroundColor: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
                  //   ),
                  // ):Text(""),
                      index == finalQues.length - 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Expanded(
                                  child: Center(
                                      child: isQuit == 0
                                          ? Text(
                                              "Total Amount: ₹ $wAmount",
                                              textScaleFactor: 2,
                                            )
                                          : Text(
                                              "Total Amount: ₹ $amount",
                                              textScaleFactor: 2,
                                            ))),
                            )
                          : Text(""),
                      index == finalQues.length - 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Expanded(
                                  child: Center(
                                      child: Text(
                                          "Questions Attempted: $quesAttempted",
                                          textScaleFactor: 2))),
                            )
                          : Text(""),
                      index == finalQues.length - 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Expanded(
                                child: GestureDetector(
                                  onTap: () => Navigator.pushReplacement(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              new LetsPlay())),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.lightGreen),
                                      child: Center(
                                          child: Text("Play Again",
                                              textScaleFactor: 2))),
                                ),
                              ),
                            )
                          : Text("")
                    ],
                  ),
                );
              },
            ),
    );
  }
}
