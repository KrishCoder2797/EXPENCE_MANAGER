import 'sidedrawer5.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class CardModel {
  int cardId;
  String date;
  int amount;
  String url;
  String category;
  String description;

  CardModel(this.cardId,
      {required this.date,
      required this.amount,
      required this.url,
      required this.category,
      required this.description});
}

class _HomeScreenState extends State<HomeScreen> {
  Widget getCard(CardModel card) {
    return Container(
      // margin: const EdgeInsets.only(
      //   bottom: 2,
      // ),

      padding: const EdgeInsets.symmetric(
        //vertical: 10,
        horizontal: 10,
      ),
      //height: 95,
      height: 80,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 26,
                child: Image.asset(card.url),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 224,
                        child: Text(card.category,
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                        child: Text("${card.amount}",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 255,
                    child: Text(card.description,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
            ],
          ),
          //const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            //const Spacer(),
            Text("3 June",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
            Text(" | ",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
            Text("11:30",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
          ]),
        ],
      ),
    );
  }

  List cardList = [];
  @override
  void initState() {
    // TODO: implement initState

    cardList.add(
      CardModel(1,
          date: '9 June',
          amount: 500,
          category: "Medicine",
          url: "assets/medicine.png",
          description: "Lorem Ipsum is simply dummy text of the"),
    );
    cardList.add(
      CardModel(1,
          date: '9 June',
          amount: 500,
          category: "Shopping",
          url: "assets/shopping.png",
          description: "Lorem Ipsum is simply dummy text of the"),
    );
    cardList.add(
      CardModel(1,
          date: '9 June',
          amount: 500,
          category: "Food",
          url: "assets/food.png",
          description: "Lorem Ipsum is simply dummy text of the"),
    );
    cardList.add(
      CardModel(1,
          date: '9 June',
          amount: 500,
          category: "Fuel",
          url: "assets/fuel.png",
          description: "Lorem Ipsum is simply dummy text of the"),
    );

    super.initState();
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
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Date",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Date",
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
                    Text("Amount",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Amount",
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
                          labelText: "Category",
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
                    Text("Description",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Description",
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
                  Text("Add Transaction",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          //backgroundColor: Color.fromRGBO(0, 0, 0, 10),
          //shadowColor: Colors.grey,

          elevation: 5,
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.menu_outlined,
          //       size: 30,
          //     )),
          title: Text("June 2022",
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
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 1.5,
                color: Colors.grey,
              );
            },
            itemCount: cardList.length,
            itemBuilder: (BuildContext context, int index) {
              return getCard(cardList[index]);
            }));
  }
}
