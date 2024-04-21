import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'history.dart';
import 'package:project/ProfileTH.dart';

class CallHome {
  void main() {
    runApp(HomePage());
  }
}

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => HistoryPage(),
    ),
  ],
);

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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text('Home'),
                floating: true,
                pinned: true,
                snap: true,
              ),
            ];
          },
          body: HomeBody(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
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
      ),
    );
  }
}

// Remainder of HomeBody and other classes...

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
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView(
            scrollDirection: Axis.horizontal,
            controller: PageController(),
            children: <Widget>[
              SizedBox(width: 10),
              _buildImage('assets/image.png'),
              SizedBox(width: 10),
              _buildImage('assets/image2.jpg'),
              SizedBox(width: 10),
              _buildImage('assets/image3.jpg'),
              SizedBox(width: 10),
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
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
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
                    _currentIndex == 0 ? 'Male Dormitory' : 'Female Dormitory',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      controller: PageController(),
                      children: <Widget>[
                        SizedBox(width: 10),
                        _buildImage('assets/domitory1.jpeg'),
                        SizedBox(width: 10),
                        _buildImage('assets/domitory2.jpeg'),
                        SizedBox(width: 10),
                        _buildImage('assets/domitory3.jpeg'),
                        SizedBox(width: 10),
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
      aspectRatio: 16 / 9,
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
