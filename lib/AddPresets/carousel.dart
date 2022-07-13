import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3 / 2,
          child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 200,

                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Card(
                      elevation: 5,
                      // height: 150.0,
                      // width: ,
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "Offers",
                        style: TextStyle(fontSize: 25),
                      )),
                    ),
                  );
                }),
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(2, activePage))
      ],
    );
  }
}
