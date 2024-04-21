import 'package:flutter/material.dart';
import 'package:project/home.dart';

class CallDorm {
  void main() {
    runApp(MaterialApp(
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('dormitory3-4'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            CallHome().main(); // ใช้ Navigator.pop เพื่อย้อนกลับไปหน้าก่อนหน้า
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'รายละเอียดของหอพัก3-4',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  Container(
                    width: deviceHeight * 0.6,
                    height: deviceHeight * 0.6,
                    child: Image.asset(
                      'assets/domitory1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text('บ้านอินทนิล (หอ 3-4)02-441-9116 กด 2'),
                ],
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  Container(
                    width: deviceHeight * 0.6,
                    height: deviceHeight * 0.6,
                    child: Image.asset(
                      'assets/fee.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text('รูปที่ 2'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
