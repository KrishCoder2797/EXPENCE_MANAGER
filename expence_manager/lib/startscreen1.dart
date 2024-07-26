import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'registerpage2.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State createState() => _StartScreenState();
}

class _StartScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Spacer(),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const RegisterPage();
                }));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 144,
                width: 144,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(234, 238, 235, 1),
                ),
                child: Image.asset(
                  'assets/wallet.png',
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 200,
          // ),
          const Spacer(),
          SizedBox(
            child: Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
