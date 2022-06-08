import 'package:capiie/pages/Page3.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  final int delayedAmount = 500;
  int _currentIndex = 0;
  int _pageIndex = 0;
  late PageController _pageController;
  bool _isVisible = true;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);

    controller.addListener(() {
      setState(() {
        _isVisible =
            controller.position.userScrollDirection == ScrollDirection.forward;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5F6),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: <Widget>[
          SingleChildScrollView(
            controller: controller,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    DelayedAnimation(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good afternoon,",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Color(0xFF747489)),
                            ),
                            Text(
                              "Segun",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Color(0xFF363535)),
                            ),
                          ],
                        ),
                        delay: delayedAmount + 500,
                        direction: 'up'),
                    DelayedAnimation(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 170,
                          width: double.infinity,
                          child: Material(
                            elevation: 8.0,
                            color: Color(0xFF8185E2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/question.svg',
                                      width: 30,
                                      height: 30,
                                      color: Colors.white,
                                    ),
                                    new Spacer(),
                                    Text(
                                      "Personal growth",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "DAILY REFLECTION →",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Color(0xFF494B92)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      delay: delayedAmount + 1000,
                      direction: 'left',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DelayedAnimation(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              SvgPicture.asset('assets/svg/radio-waves.svg',
                                  color: Colors.black45,
                                  width: 24,
                                  semanticsLabel: 'A red up arrow'),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  height: 70,
                                  child: VerticalDivider(
                                    color: Colors.black45,
                                    thickness: 0.5,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              SvgPicture.asset('assets/svg/edit.svg',
                                  color: Colors.black45,
                                  width: 24,
                                  semanticsLabel: 'A red up arrow'),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 350,
                                child: Material(
                                  elevation: 4.0,
                                  shadowColor: Colors.grey,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0)),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50.0,
                                          right: 20.0,
                                          bottom: 30.0,
                                          top: 30.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "New",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                color: Colors.black87),
                                          ),
                                          Text(
                                            "i would love to a journey today.",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "1:35 AM  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 350,
                                child: Material(
                                  elevation: 4.0,
                                  shadowColor: Colors.grey,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0)),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50.0,
                                          right: 20.0,
                                          bottom: 30.0,
                                          top: 30.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hello",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                color: Colors.black87),
                                          ),
                                          Text(
                                            "Hi",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "1:35 AM ☹ ☹ ☹ ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      delay: delayedAmount + 1500,
                      direction: 'left',
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    DelayedAnimation(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "31, JULY",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18.0,
                                color: Colors.black87),
                          ),
                          Text(
                            "2021",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  SvgPicture.asset('assets/svg/edit.svg',
                                      color: Colors.black45,
                                      width: 24,
                                      semanticsLabel: 'A red up arrow'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      height: 150,
                                      child: VerticalDivider(
                                        color: Colors.black45,
                                        thickness: 0.5,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SvgPicture.asset('assets/svg/image.svg',
                                      color: Colors.black45,
                                      width: 24,
                                      semanticsLabel: 'A red up arrow'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 350,
                                    child: Material(
                                      elevation: 10.0,
                                      shadowColor: Colors.grey,
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0)),
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 50.0,
                                              right: 20.0,
                                              bottom: 30.0,
                                              top: 30.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Hello",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                    color: Colors.black87),
                                              ),
                                              Text(
                                                "Hi",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "1:35 AM ☹ ☹ ☹ ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      'assets/images/image.png',
                                      width: 170,
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      delay: delayedAmount + 1500,
                      direction: 'left',
                    )
                  ],
                ),
              ),
            ),
          ),
          page3(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Offstage(
        offstage: !_isVisible,
        child: DotNavigationBar(
          currentIndex: _currentIndex,
          enableFloatingNavBar: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          curve: Curves.bounceIn,
          onTap: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          // dotIndicatorColor: Colors.black,
          items: [
            /// Home
            DotNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/copy.svg',
                  width: 18,
                  height: 18,
                ),
                unselectedColor: Colors.grey),

            /// Likes
            DotNavigationBarItem(
                icon: SvgPicture.asset(
              'assets/svg/waves.svg',
              width: 18,
              height: 18,
              color: Colors.black87,
            )),
            DotNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                unselectedColor: Colors.white),

            /// Search
            DotNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/right-quote.svg',
                  width: 18,
                  height: 18,
                ),
                unselectedColor: Colors.grey),

            /// Profile
            DotNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/user.svg',
                  width: 18,
                  height: 18,
                ),
                unselectedColor: Colors.grey),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF8185E2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
