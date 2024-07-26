import 'dart:ui';

import 'sidedrawer5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
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

class _CategoryScreenState extends State<CategoryScreen> {
  List imgList = [
    "assets/food.png",
    "assets/fuel.png",
    "assets/medicine.png",
    "assets/shopping.png",
    "assets/shopping.png"
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

  Future<dynamic> showDeleteConfirmationBox(ModelCategories card) async {
    return await showDialog(      // method for showing dailog
      barrierDismissible: false,

      
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 20,
          shadowColor: Colors.black,
          alignment: Alignment.center,
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "Delete Category",
              // style: GoogleFonts.poppins(
              //   fontSize: 19,
              //   fontWeight: FontWeight.w600,
              //   fontStyle: FontStyle.normal,
              // ),
            ),
          ),
          titleTextStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
          //titlePadding: const EdgeInsets.all(50),
          // content: const SizedBox(
          //   height: 45,
          //   //alignment: Alignment.center,
          //   child:
          //       Text("Are you sure you want to delete the selected category?"),
          // ),
          // content: Column(
          //   //alignment: Alignment.center,
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Text("Are you sure you want to delete the selected category?"),
          //   ],
          // ),
          content: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                text: "Are you sure you want to delete the selected category?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
          ),
          contentTextStyle: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            GestureDetector(
              onTap: () {
                categoryList.remove(card);
                setState(() {});
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(14, 161, 125, 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  "Delete",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(140, 128, 128, 0.2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  "Cancel",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget getContainer(ModelCategories card) {
    return GestureDetector(
      onLongPress: () async {
        await showDeleteConfirmationBox(card);
      },
      child: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                offset: Offset(1, 2),
                spreadRadius: 0,
                blurRadius: 8,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              card.imgPath,
              height: 60,
              width: 60,
            ),
            Text(
              card.category,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future _showBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: this.context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 30,
                              ),
                              height: 90,
                              width: 90,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 214, 212, 212)),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.image_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            Text(
                              "Add",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Image URL",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter url",
                          //hintText: "Enter Title",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: const BorderSide(
                          //     width: 2,
                          //     color: Color.fromRGBO(137, 0, 255, 1),
                          //   ),
                          //   borderRadius: BorderRadius.circular(15),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: const BorderSide(
                          //     width: 2,
                          //     color: Color.fromRGBO(137, 0, 255, 1),
                          //   ),
                          //   borderRadius: BorderRadius.circular(15),
                          // ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Category",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter category name",
                          //hintText: "Enter Title",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: const BorderSide(
                          //     width: 2,
                          //     color: Color.fromRGBO(137, 0, 255, 1),
                          //   ),
                          //   borderRadius: BorderRadius.circular(15),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: const BorderSide(
                          //     width: 2,
                          //     color: Color.fromRGBO(137, 0, 255, 1),
                          //   ),
                          //   borderRadius: BorderRadius.circular(15),
                          // ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 150,
                            alignment: Alignment.center,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(14, 161, 125, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Text("ADD",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: 160,
          height: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              _showBottomSheet();
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                    child: Icon(
                      color: Colors.white,
                      Icons.add,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text("Add Category",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
          ),
        ),
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
          title: Text("Category",
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
        body: GridView.builder(
            itemCount: categoryList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return getContainer(categoryList[index]);
            }));
  }
}
