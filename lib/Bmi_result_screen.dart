import 'package:flutter/material.dart';
class BmiResultScreen extends StatelessWidget {

  final double result ;
  final bool isMale;
  final double age ;

  BmiResultScreen({
    required this.age ,
    required this.isMale ,
    required this.result,
   }
    );


  @override
  Widget build(BuildContext context) {
    String resultMessage = '';

    String message(){

      if(result <= 15 && result < 25 ){
         resultMessage = 'There is weight loss';
      }
      else if(result <= 25){
        resultMessage = 'Weight is Normal';
      }
      else if (result > 25 && result < 30){
        resultMessage = 'There is an increase in weight';
      }
      else if (result > 30){
        resultMessage = 'There is obesity in the body';
      }
      return resultMessage;
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 15, 64 , 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 15, 64 , 1),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Container(
          alignment: Alignment.center,
          child: Text(
          'BMI Result'
      ),
        ),
    ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: isMale ? AssetImage('assets/images/male.png') : AssetImage('assets/images/female.png'),
                            height: 90.0,
                            width: 90.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '${isMale ? 'Male' : 'Female'}',
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
                        color: Color.fromRGBO(48, 51, 107, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Result',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'BMI IS : ${result.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            message() ,
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
                        color: Color.fromRGBO(48, 51, 107, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 45.0,
                          ),
                          Text(
                            '${age.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color.fromRGBO(48, 51, 107, 1),
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
                'BACK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              color:  Color.fromRGBO(234, 32, 39, 1),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),

        ],
      ),
    );
  }
}
