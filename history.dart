import 'package:flutter/material.dart';
import 'ProfileTH.dart';
import 'home.dart';

class BookingHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Booking History'),
        ),
        body: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(255, 151, 55, 215)), // สีเทา
            borderRadius: BorderRadius.circular(10.0), // กำหนดขอบโค้ง
          ),
          child: ListView(
            children: [
              BookingItem(
                date: 'April 20, 2024',
                time: '10:00 AM',
              ),
              BookingItem(
                date: 'April 21, 2024',
                time: '02:30 PM',
              ),
              // เพิ่ม BookingItem ตามจำนวนที่ต้องการ
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.grey[300], // สีเทา
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      // กระทำเมื่อกดปุ่ม Home
                      CallHome().main();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_bag),
                    onPressed: () {
                      // กระทำเมื่อกดปุ่ม Shopping Bag
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.account_balance_wallet),
                    onPressed: () {
                      // กระทำเมื่อกดปุ่ม Wallet
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle),
                    onPressed: () {
                      // กระทำเมื่อกดปุ่ม Account
                      CallProfileTH().main();
                    },
                  )
                ])));
  }
}

class BookingItem extends StatelessWidget {
  final String date;
  final String time;

  const BookingItem({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade200, // สีน้ำเงินผสมสีม่วง
        border: Border.all(color: Colors.grey), // สีเทา
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date: $date',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800), // สีเทาของข้อความ
          ),
          SizedBox(height: 8.0),
          Text(
            'Time: $time',
            style: TextStyle(
                fontSize: 16.0, color: Colors.grey), // สีเทาของข้อความ
          ),
        ],
      ),
    );
  }
}

class CallHistory {
  void main() {
    runApp(MaterialApp(
      home: BookingHistoryPage(),
    ));
  }
}
