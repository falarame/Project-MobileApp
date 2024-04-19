import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Container(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage('https://example.com/profile-image.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'profilename',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Account information',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    Divider(
                      color: Colors.lightBlue,
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'Personal Information Address, Email, Eelephone Number',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'Identity verification',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'Payment Information',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'General',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    Divider(
                      color: Colors.lightBlue,
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'Pleasant accommodation',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'My review',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'Language',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // โค้ดสำหรับการทำงานเมื่อคลิกที่ปุ่ม
                print(
                    'Logged out'); // ตัวอย่างการแสดงข้อความ "Logged out" ในคอนโซล
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // กำหนดรูปร่างของปุ่ม
                    side: BorderSide(
                        color: Colors.black, width: 2), // เพิ่มเส้นขอบ
                  ),
                  backgroundColor: Colors.lightBlue),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'LogOut',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              color: Colors.grey,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {
                          // โค้ดสำหรับการกระทำเมื่อคลิกที่ไอคอนบ้าน
                        },
                        tooltip: '',
                      ),
                      Text('Home'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // โค้ดสำหรับการกระทำเมื่อคลิกที่ไอคอนแว่นขยาย
                        },
                        tooltip: '',
                      ),
                      Text('Search'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.watch_later_outlined),
                        onPressed: () {
                          // โค้ดสำหรับการกระทำเมื่อคลิกที่ไอคอนกระเป๋าพร้อมนาฬิกาจับเวลา
                        },
                        tooltip: '',
                      ),
                      Text('History'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.account_circle),
                        onPressed: () {
                          // โค้ดสำหรับการกระทำเมื่อคลิกที่ไอคอนรูปบัญชี
                        },
                        tooltip: '',
                      ),
                      Text('Profile'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
