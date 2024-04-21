import 'package:flutter/material.dart';
import 'ProfileTH.dart';
import 'history.dart';
import 'home.dart';

class CallSearch {
  void main() {
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search',
      home: Search(),
    );
  }
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();

  bool isSearchEmpty = true;
  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        isSearchEmpty = searchController.text.isEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black),
                ),
                child: Stack(
                  children: [
                    TextField(
                      controller: searchController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ค้นหาหอพักใกล้คุณ',
                      ),
                    ),
                    if (searchController.text.isEmpty)
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: GestureDetector(
                          onTap: () {
                            // ไร้ข้อมูล
                            print('');
                          },
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      )
                    else
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: GestureDetector(
                          onTap: () {
                            // มีข้อมูล
                            print(searchController.text);
                          },
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ],
                )),
            SizedBox(height: 40.0),
            Text(
              'ประวัติการค้นหา',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account'),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              CallHome().main();
              break;
            case 2:
              CallHistory().main();
              break;
            case 3:
              CallProfileTH().main();
          }
        },
      ),
    );
  }
}
