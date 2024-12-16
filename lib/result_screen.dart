import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  ResultScreen({
    required this.result,
    super.key,
  });
  double? result;
  String? text = '', subText;
  Color? color;

  @override
  Widget build(BuildContext context) {
    if (result! < 18.5) {
      text = 'Tiny';
      subText = 'You have a Tiny body weight. Eat more and see a doctor!';
      color = const Color.fromARGB(255, 231, 2, 2);
    } else if (result! == 18.5) {
      text = 'Underweight';
      subText = 'You have an Underweight body weight. Try to eat more!';
      color = const Color(0xff90d200);
    } else if (result! > 18.5 && result! < 25) {
      text = 'Normal';
      subText = 'You have a normal body weight. Good job!';
      color = const Color(0xffd2e702);
    } else if (result! >= 25 && result! < 30) {
      text = 'Overweight';
      subText = 'You have an Overweight body weight. Take care of yourself!';
      color = const Color(0xfffdf235);
    } else if (result! >= 30 && result! < 35) {
      text = 'Obese';
      subText = 'You have an Obese body weight. Try to exercise more!';
      color = const Color(0xfffe9b1a);
    } else {
      text = 'Extremely Obese';
      subText = 'You have an Extremely Obese body weight. See a doctor!';
      color = const Color(0xfffe4936);
    }

    return Scaffold(
      backgroundColor: const Color(0xff090e21),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            color: Colors.white,
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: const Color(0xff090e21),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Your Result',
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(35),
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text!.toUpperCase(),
                    style: TextStyle(
                      fontSize: 35,
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    result!.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$subText',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: MaterialButton(
              color: const Color(0xffeb1555),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Re-Calculate',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
