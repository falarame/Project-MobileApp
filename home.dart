import 'package:flutter/material.dart';
import 'ProfileTH.dart';

class CallHome {
  void main() {
    runApp(HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: HomeBody(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height *
              0.25, // ปรับความสูงของ Container
          child: ListView(
            scrollDirection: Axis.horizontal,
            controller: PageController(),
            children: <Widget>[
              SizedBox(width: 10), // เว้นระยะห่างด้านซ้าย
              _buildImage('assets/image.png'),
              SizedBox(width: 10), // เว้นระยะห่างระหว่างภาพ
              _buildImage('assets/image2.jpg'),
              SizedBox(width: 10), // เว้นระยะห่างระหว่างภาพ
              _buildImage('assets/image3.jpg'),
              SizedBox(width: 10), // เว้นระยะห่างด้านขวา
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _currentIndex == 0 ? 'หอพักชาย' : 'หอพักหญิง',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.25, // ปรับความสูงของ Container
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      controller: PageController(),
                      children: <Widget>[
                        SizedBox(width: 10), // เว้นระยะห่างด้านซ้าย
                        _buildImage('assets/image.png'),
                        SizedBox(width: 10), // เว้นระยะห่างระหว่างภาพ
                        _buildImage('assets/image2.jpg'),
                        SizedBox(width: 10), // เว้นระยะห่างระหว่างภาพ
                        _buildImage('assets/image3.jpg'),
                        SizedBox(width: 10), // เว้นระยะห่างด้านขวา
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImage(String imagePath) {
    return AspectRatio(
      aspectRatio: 16 / 9, // สัดส่วนที่ต้องการ (เช่น 16:9)
      child: AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        left: _currentIndex * MediaQuery.of(context).size.width * 0.85,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
