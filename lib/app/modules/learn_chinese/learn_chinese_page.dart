import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'learn_chinese_controller.dart';

class LearnChinesePage extends StatefulWidget {
  final String title;
  const LearnChinesePage({Key key, this.title = "LearnChinese"})
      : super(key: key);

  @override
  _LearnChinesePageState createState() => _LearnChinesePageState();
}

class _LearnChinesePageState
    extends ModularState<LearnChinesePage, LearnChineseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/paper.jpg"),
                    fit: BoxFit.cover,
                  ),
                  ),
            ),
          ),
          Positioned(
            top: 16,
            left: 32,
            child: SafeArea(
              child: Container(
                child: Text(
                  "爱",
                  style: GoogleFonts.zhiMangXing(
                    fontSize: 72,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            bottom: 0,
            left: 0,
            right: 0,
            child: PageView(
              controller: controller.pageController,

              children: [
                ...[0, 1, 2].map((vav) => Container( 
                  padding: EdgeInsets.only(left: 0, right: 42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ..."Learn Chinese Easy".split(" ").map(
                                (v) => Text(
                                  v,
                                  style: GoogleFonts.lato(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                          Text(
                            "lorem ipsum is simply dummy text of the printing and typesetting industry",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.3,
            left: 32,
            right: 32,
            bottom: 10,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: SmoothPageIndicator(
                      controller: controller.pageController,
                      count: 3,
                      effect: SwapEffect(
                        dotColor: Colors.grey.shade500,
                        activeDotColor: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  child: ClipOval(
                    child: Material(
                      color: Colors.black, // button color
                      child: InkWell(
                        splashColor: Colors.white, // inkwell color
                        child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
