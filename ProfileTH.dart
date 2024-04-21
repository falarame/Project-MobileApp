import 'package:flutter/material.dart';
import 'package:profile/IdentificationTH.dart';
import 'package:profile/history.dart';
import 'home.dart';
import 'personalinformationTH.dart';

class CallProfileTH {
  void main() {
    runApp(ProTH());
  }
}

class ProTH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePageTH(),
    );
  }
}

class ProfilePageTH extends StatelessWidget {
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
                        'ข้อมูลบัญชี',
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
                        CallPersonalinformationTH().main();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'แก้ไขข้อมูลส่วนตัว ที่อยู่,อีเมล,เบอร์โทรศัพท์',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // โค้ดสำหรับการเปลี่ยนหน้าหรือทำการอื่นๆ เมื่อคลิก
                        CallIdenTH().main();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'การตรวจสอบยืนยันตัวตน',
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
                          'ข้อมูลการชำระเงิน',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'ทั่วไป',
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
                          'ที่พักที่ถูกใจ',
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
                          'รีวิวของฉัน',
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
                          'ภาษา',
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
                CallHome().main();
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
                          CallHome().main();
                        },
                        tooltip: '',
                      ),
                      Text('หน้าแรก'),
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
                      Text('ค้นหา'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.watch_later_outlined),
                        onPressed: () {
                          // โค้ดสำหรับการกระทำเมื่อคลิกที่ไอคอนกระเป๋าพร้อมนาฬิกาจับเวลา
                          CallHistory().main();
                        },
                        tooltip: '',
                      ),
                      Text('ประวัติการจอง'),
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
                      Text('โปรไฟล์'),
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
