import 'dart:ui';

import 'sidedrawer5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class ModelCategories {
  int categoryNo;
  String imgPath;
  String category;
  double price;

  ModelCategories(
      {required this.category,
      required this.imgPath,
      required this.categoryNo,
      required this.price});
}

class _GraphScreenState extends State<GraphScreen> {
  List imgList = [
    "assets/food.png",
    "assets/fuel.png",
    "assets/medicine.png",
    "assets/shopping.png",
    "assets/shopping.png",
  ];

  List categoryList = [];
  @override
  void initState() {
    categoryList.add(ModelCategories(
        category: "Food", imgPath: imgList[0], categoryNo: 0, price: 650));
    categoryList.add(ModelCategories(
        category: "Fuel", imgPath: imgList[1], categoryNo: 1, price: 600));
    categoryList.add(ModelCategories(
        category: "Medicine", imgPath: imgList[2], categoryNo: 2, price: 350));
    categoryList.add(ModelCategories(
        category: "Entertainment",
        imgPath: imgList[3],
        categoryNo: 3,
        price: 440));
    categoryList.add(ModelCategories(
        category: "Shopping", imgPath: imgList[4], categoryNo: 4, price: 550));

    super.initState();
  }

  Map<String, double> dataMapList = {
    "Food": 20,
    "Fuel": 30,
    "Medicine": 20,
    "Entertainment": 20,
    "Shopping": 10
  };
  Widget createPieChart() {
    return PieChart(
      dataMap: dataMapList,
      animationDuration: const Duration(
        seconds: 3,
      ),
      centerWidget: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
            Text("₹ 2550.00",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValues: false,
        // showChartValueBackground: false,
        // showChartValuesOutside: true,
        // showChartValuesInPercentage: true,
      ),
      chartType: ChartType.ring,
      chartRadius: 170,
      ringStrokeWidth: 35,
      chartLegendSpacing: 30,
      legendOptions: LegendOptions(
          legendTextStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      )),
    );
  }

  Widget getCardRow(ModelCategories card) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            card.imgPath,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(card.category,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )),
          const Spacer(),
          Text("₹ ${card.price}",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //backgroundColor: Color.fromRGBO(0, 0, 0, 10),
        //shadowColor: Colors.grey,

        elevation: 5,
        // leading: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.menu_outlined,
        //       size: 30,
        //     )),
        title: Text("Graph",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
        actions: const [
          // Icon(
          //   size: 30,
          //   Icons.keyboard_arrow_down,
          // ),
          // SizedBox(
          //   width: 145,
          // ),
          Icon(
            Icons.search_outlined,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 200,
              child: createPieChart(),
            ),
            const Divider(
              thickness: 1.5,
              color: Color.fromARGB(255, 192, 191, 191),
            ),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: ListView.builder(
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return getCardRow(categoryList[index]);
                },
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Color.fromARGB(255, 192, 191, 191),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Total",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
                Text("₹ 2550.50",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
