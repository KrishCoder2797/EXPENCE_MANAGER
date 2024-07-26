import 'sidedrawer5.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
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

class _TrashScreenState extends State<TrashScreen> {
  Widget getCard(CardModel card) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 2,
      ),
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        //vertical: 10,
        horizontal: 10,
      ),
      height: 85,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 10,
                backgroundColor: Color.fromRGBO(204, 210, 227, 1),
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 15,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(card.category,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
              const Spacer(),
              SizedBox(
                child: Text("${card.amount}",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 32,
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
          description: "Lorem Ipsum is simply"),
    );
    cardList.add(
      CardModel(1,
          date: '9 June',
          amount: 500,
          category: "Shopping",
          url: "assets/shopping.png",
          description: "Lorem Ipsum is simply \n dummy text of the"),
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
          title: Text("Trash",
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
