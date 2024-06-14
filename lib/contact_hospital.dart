import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:share_plus/share_plus.dart';

class ContactHospital extends StatefulWidget {
  final String images;
  final String name;
  final String like;
  final String story;
  final String des;

  const ContactHospital(
      {super.key,
      required this.images,
      required this.name,
      required this.like,
      required this.story,
      required this.des});

  @override
  State<ContactHospital> createState() => _ContactHospitalState();
}

class _ContactHospitalState extends State<ContactHospital> {
  bool ontapped = false;
  final List name = [
    "Mr. Ashok",
    "Punit",
    "Verified User",
  ];

  final List view = [
    "1 month ago",
    "4 month ago",
    "2 month ago",
  ];
  final List view2 = [
    "equired data, and you can use it as needed within that screen. Make sure to adjust the data types and add any additional data you need to pass.",
    "equired data, and you can use it as needed within that screen. Make sure to adjust the data types and add any additional data you need to pass.",
    "equired data, and you can use it as needed within that screen. Make sure to adjust the data types and add any additional data you need to pass.",
  ];

  final List view1 = [
    "visited for broncholities treatement",
    "visite for consultation,motion",
    "visited for broncholities treatement",
  ];

  final List date = [
    "Today",
    "Tommrow",
    "16 Jun",
    "20 Jun",
    "22 Jun",
    "1 July ",
    "4 July",
  ];
  final List slot = [
    "12 slots",
    "3 Slots",
    "No slot",
    "9 slots",
    "7 slots",
    "No slot",
    "No slot",
  ];
  final List time = [
    "04:05 PM",
    "10:45 PM",
    "10:40 PM",
    "10:45 PM",
    "1:45 PM",
    "10:50 PM",
    "10:45 PM",
  ];
  final List des = [
    "Specail interest in Diabetology",
    "31 years experience overall ",
    "21 years experience overall ",
    "4 years experience overall",
    "pecail interest in Diabetology",
    "31 years experience overall ",
    "21 years experience overall ",
    "4 years experience overall",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff28318c),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      ontapped = !ontapped;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: ontapped
                            ? Text("Added to" "my doctors" "")
                            : Text("Removed from " "my doctors" ""),
                        action: SnackBarAction(
                          label: ontapped ? "view all" : "",
                          onPressed: () {},
                          textColor: Colors.amber,
                        ),
                      ),
                    );
                  },
                  icon: ontapped
                      ? const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        )
                      : const Icon(
                          Icons.star_border_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                    onPressed: () {
                      Share.share(
                          "https://play.google.com/store/apps/details?id=com.");
                    },
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 20,
                    ))
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                                maxRadius: 40,
                                backgroundImage: AssetImage(widget.images)),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.name,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("General Physician"),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Icon(Icons.error_outline),
                                  ],
                                ),
                                Text(
                                  widget.des,
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.thumb_up,
                                        color: Colors.green,
                                        size: 17,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        widget.like,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        Icons.message,
                                        color: Colors.green,
                                        size: 17,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        widget.story,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                        // color: Color(0xfff8f8f8),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Container(
                        height: 280,
                        width: size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xfff2f1f7),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                  color: Color(0xffd7f5ff),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Color(0xff0f91e5),
                                      child: Icon(
                                        Icons.add_home_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    Text(
                                      "In clinic Appointment ",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 17, 17, 17),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "₹ 730 Fees",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ]),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Wisdom clinic",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "1 more clinic",
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                decoration:
                                                    TextDecoration.underline,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "HSR layout",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    "15 min or less wait time",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 29, 29, 29),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Color(0xfff2f1f7),
                            ),
                            SizedBox(
                              height: 33,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: slot.length,
                                itemBuilder: (context, index) {
                                  // if (index == 0) {
                                  //   return Container(
                                  //     height: 3,
                                  //     width: 40,
                                  //     color: Colors.blue,
                                  //   );
                                  // } else
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 14),
                                    child: Row(
                                      children: [
                                        Text(
                                          date[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          slot[index],
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 35, 179, 6),
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Divider(
                              color: Color(0xfff2f1f7),
                            ),
                            SizedBox(
                              height: 50,
                              child: ListView.builder(
                                itemCount: time.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          time[index],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff1f9dd8),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Text("View all slots",
                                style: TextStyle(
                                    color: Color(0xff1f9dd8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17)),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Divider(
                        color: Color(0xfff2f1f9),
                        thickness: 5,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Patient stories",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                          Text(
                              "equired data, and you can use it as needed within that screen. Make sure to adjust the data types and add any additional data you need to pass."),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        color: Color(0xfff2f1f7),
                      ),
                    ),
                    SizedBox(
                      child: ListView.builder(
                        itemCount: name.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundColor:
                                              Color.fromARGB(255, 0, 10, 31),
                                          child: Text(
                                            "M",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                name[index],
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                view[index],
                                                style: const TextStyle(
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.thumb_up,
                                      color: Colors.green,
                                      size: 17,
                                    ),
                                  ],
                                ),
                                Text(
                                  view1[index],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  view2[index],
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const Divider(
                                  color: Color(0xfff2f1f7),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Center(
                              child: Text(
                                "share Your stories",
                                style: TextStyle(
                                    // color: Color(0xff1a9fda),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            height: 33,
                            width: size.width / 2.2,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            child: const Center(
                              child: Text(
                                "Read All Stories",
                                style: TextStyle(
                                    // color: Color(0xff1a9fda),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            height: 33,
                            width: size.width / 2.2,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Center(
                          child: Text(
                            "Book Clinic Visit",
                            style: TextStyle(
                                color: Color(0xff1a9fda),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        height: 30,
                        width: size.width / 2.3,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff1a9fda), width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Container(
                          child: const Center(
                            child: Text(
                              "Call clinic",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          height: 30,
                          width: size.width / 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0xff1a9fda),
                            borderRadius: BorderRadius.circular(5),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
