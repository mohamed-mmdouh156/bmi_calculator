import 'dart:math';
import 'package:bmi_calculator/Bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool isMale = true;
  double height = 120 ;
  double weight = 60 ;
  double age = 20 ;
  double result = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 15, 64 , 1),
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(19, 15, 64 , 1),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 90.0,
                              width: 90.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: isMale ? Colors.blue : Color.fromRGBO(48, 51, 107, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                       setState(() {
                         isMale = false;
                       });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage('assets/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: !isMale ? Colors.blue : Color.fromRGBO(239, 87, 119, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                fontSize: 38.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'CM',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Slider(
                          value: height,
                          max: 220.0,
                          min: 80,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromRGBO(48, 51, 107, 1),
                  ),
                ),
              ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                       decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15.0),
                        color: Color.fromRGBO(48, 51, 107, 1),
                       ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '${weight.round()}',
                              style: TextStyle(
                                fontSize: 38.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                    mini: true,
                                    heroTag: 'weight-',
                                    onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                    }
                                    ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                    child: Icon(
                                      Icons.add,
                                    ),
                                    mini: true,
                                    heroTag: 'weight+',
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    }
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(48, 51, 107, 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,

                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '${age.round()}',
                              style: TextStyle(
                                fontSize: 38.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                    mini: true,
                                    heroTag: 'age-',
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    }
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                    child: Icon(
                                      Icons.add,
                                    ),
                                    mini: true,
                                    heroTag: 'age+',
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    }
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Container(
            width: double.infinity,
            height: 60.0,
            child: MaterialButton(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              color:  Color.fromRGBO(234, 32, 39, 1),
              onPressed: (){
                 result = weight / pow((height / 100) , 2);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return BmiResultScreen(age: age, isMale: isMale, result: result);
                  })
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
