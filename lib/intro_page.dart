import 'package:flutter/material.dart';
import 'package:my_apps/Strings.dart';
import 'package:my_apps/home_page.dart';

class IntroPage extends StatefulWidget {
  static const String id = 'intro_page';
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildIndicator(),
            ),
            PageView(
              onPageChanged: (int page) {
                setState(() {
                  currentIndex = page;
                });
              },
              children: [
                makePage(
                  image: 'assets/images/dew.png',
                  title: Strings.one,
                  content: Strings.one,
                ),
                makePage(
                  image: 'assets/images/dew2.jpg',
                  title: Strings.two,
                  content: Strings.two,
                ),
                makePage(
                  image: 'assets/images/dew3.jpg',
                  title: Strings.three,
                  content: Strings.three,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: texts(currentIndex)
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget? texts(number){
    if(number == 2){
      return const Text('Scip',style: TextStyle(color: Colors.deepOrange),);
    }else{
      return null;
    }
  }

  Widget makePage({image, title, content}) {
    return Container(
      // height: 200,
      // width: 200,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(title,
                style: const TextStyle(color: Colors.deepOrange, fontSize: 30),),
              Text(title,
                style: const TextStyle(color: Colors.grey, fontSize: 30),),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image),
              ),
            ],
          )

        ],),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  List<Widget> buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}