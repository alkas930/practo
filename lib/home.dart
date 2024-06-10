import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Color(0xffdfdfe9),
                ));
          }),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: const Color.fromARGB(255, 72, 33, 243),
                      ),
                      Text(
                        "Bangalore",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffe6f5fc),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.note_add,
                              color: Colors.blue,
                            ),
                            Text(
                              "ABHA",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.wallet),
                      ),
                    ],
                  )
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          )),
      drawer: Drawer(),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 40,
              width: size.width / 1.09,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search here",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfff1f0f6)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 5,
          ),
        ],
      ),
    );
  }
}
