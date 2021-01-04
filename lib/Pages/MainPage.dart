import 'package:flutter/material.dart';

import 'HomePage/HomePage.dart';

var titleBar;

GlobalKey pageKey = GlobalKey();
enum pages { HomePage, Search, AddWork, Dashboard, VisitProfile }
var currentPage = pages.HomePage;

Map<dynamic, Widget> getPage = {
  pages.HomePage: HomePage(),
};

class MainPageWithAppBar extends StatefulWidget {
  MainPageWithAppBar() : super(key: pageKey);
  @override
  _MainPageWithAppBarState createState() => _MainPageWithAppBarState();
}

class _MainPageWithAppBarState extends State<MainPageWithAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    titleBar = new AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      elevation: 2.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              // width: 40,
              // height: 40,
              child: Image(
            image: AssetImage('assets/images/logo.png'),
            color: Colors.white,
          )),
        ],
      ),
      actions: <Widget>[],
    );

    return new Scaffold(
        appBar: titleBar,
        body: getPage[currentPage],
        bottomNavigationBar: new Container(
          color: Colors.black,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            color: Colors.black,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  color: (currentPage == pages.HomePage)
                      ? Colors.blue
                      : Colors.grey[700],
                  onPressed: () {
                    pageKey.currentState.setState(() {
                      currentPage = pages.HomePage;
                    });
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                    size: 30,
                  ),
                  color: (currentPage == pages.AddWork)
                      ? Colors.blue
                      : Colors.grey[700],
                  onPressed: () {
                    pageKey.currentState.setState(() {
                      currentPage = pages.AddWork;
                    });
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                    size: 30,
                  ),
                  color: (currentPage == pages.Dashboard)
                      ? Colors.blue
                      : Colors.grey[700],
                  onPressed: () {
                    pageKey.currentState.setState(() {
                      currentPage = pages.Dashboard;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
