import 'category6.dart';
import 'graphs7.dart';
import 'homescreen4.dart';
import 'trashscreen8.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({super.key});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

List color = [true, true, true, true, true];

class _SideDrawerState extends State<SideDrawer> {
  List nameColor = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black
  ];

  List bgColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  void changeColor(int index) {
    for (int i = 0; i < 5; i++) {
      if (i != index) {
        color[i] = true;
      } else {
        color[i] = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Expense Manager",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                  Text("Save all your transactions",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              changeColor(0);
              setState(() {});
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return HomeScreen();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: color[0]
                      ? Colors.white
                      : const Color.fromARGB(255, 213, 232, 227),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/transaction.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Transaction",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: color[0]
                            ? Colors.black
                            : const Color.fromRGBO(14, 161, 125, 1),
                      )),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColor(1);
              setState(() {});
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const GraphScreen();
                }),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: color[1]
                      ? Colors.white
                      : Color.fromARGB(255, 226, 245, 240),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/chart.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Graphs",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: color[1]
                            ? Colors.black
                            : const Color.fromRGBO(14, 161, 125, 1),
                      )),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColor(2);
              setState(() {});
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return CategoryScreen();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: color[2]
                      ? Colors.white
                      : const Color.fromARGB(255, 226, 245, 240),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/category.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Category",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: color[2]
                            ? Colors.black
                            : const Color.fromRGBO(14, 161, 125, 1),
                      )),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColor(3);
              setState(() {});
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const TrashScreen();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: color[3]
                      ? Colors.white
                      : const Color.fromARGB(255, 226, 245, 240),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/delet.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Trash",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: color[3]
                            ? Colors.black
                            : const Color.fromRGBO(14, 161, 125, 1),
                      )),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              changeColor(4);
              setState(() {});
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: color[4]
                      ? Colors.white
                      : const Color.fromARGB(255, 226, 245, 240),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/about.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("About Us",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: color[4]
                            ? Colors.black
                            : const Color.fromRGBO(14, 161, 125, 1),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
