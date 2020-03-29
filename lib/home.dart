import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const routeName = '/homeic';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 45, right: 45, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Hey, RS',
                        style: TextStyle(fontSize: 30),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xFFD09490),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 2, left: 45),
                  child: Text(
                    'We have some yummies for you',
                    style: TextStyle(
                      color: Color(0xFFC4C1C0),
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35, bottom: 20, left: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Top Flavours',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          color: Color(0xFFD09490),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 171,
                    padding: const EdgeInsets.only(left: 45),
                    child: Row(
                      children: <Widget>[
                        StackedCard(
                          title: 'Vanilla',
                          price: 3.45,
                          imageRoute: 'assets/images/vanilla.png',
                          cardColor: Color(0xFFFCF5F3),
                          buttonColor: Color(0xFFEDD9D4),
                          priceColor: Color(0xFFE3C2BA),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        StackedCard(
                          title: 'Coconut',
                          price: 4.5,
                          imageRoute: 'assets/images/coco.png',
                          cardColor: Color(0xFFFAF8F4),
                          buttonColor: Color(0xFFE5DEC5),
                          priceColor: Color(0xFFE0DDCE),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        StackedCard(
                          title: 'Exotic',
                          price: 5.4,
                          imageRoute: 'assets/images/exotic.png',
                          cardColor: Color(0xFFFAECE0),
                          buttonColor: Color(0xFFEFD8C0),
                          priceColor: Color(0xFFDDBEAD),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.55,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFDF4F3),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(36),
                    topLeft: Radius.circular(36),
                  ),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEFD8C0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          height: 4,
                          width: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27.0, left: 36.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Your Choice',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '1 x Sorbet',
                                    style: TextStyle(
                                      color: Color(0xFFE3C2BA),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '1 x Banana',
                                    style: TextStyle(
                                      color: Color(0xFFE3C2BA),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '1 x Vanilla',
                                    style: TextStyle(
                                      color: Color(0xFFE3C2BA),
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Total: \$ 18.90',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Order Now',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFFD09490),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
//                    Positioned(
//                      left: 150,
//                      bottom: 250,
//                      child: Container(
//                        height: 300,
//                        width: 300,
//                        child: Image.asset('assets/images/ic1.png'),
//                      ),
//                    ),
                    Positioned(
                      left: 135,
                      bottom: 163,
                      child: Container(
                        height: 360,
                        width: 360,
                        child: Image.asset('assets/images/trio.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StackedCard extends StatelessWidget {
  final String title;
  final double price;
  final String imageRoute;
  final Color cardColor;
  final Color buttonColor;
  final Color priceColor;

  const StackedCard({
    this.title,
    this.price,
    this.imageRoute,
    this.cardColor,
    this.buttonColor,
    this.priceColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(title),
              Text(
                '\$$price',
                style: TextStyle(color: priceColor),
              ),
            ],
          ),
          height: 125,
          width: 130,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
        ),
        Positioned(
          left: 70,
          bottom: 81,
          child: Container(
            height: 63,
            width: 63,
            child: Image.asset(imageRoute),
          ),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

//Container(
//child: Column(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Text('Coconut'),
//Text('\$4.5'),
//],
//),
//height: 125,
//width: 130,
//decoration: BoxDecoration(
//color: Color(0xFFFBF9F5),
//borderRadius: BorderRadius.all(
//Radius.circular(40),
//),
//),
//),
//Container(
//child: Column(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Text('Exotic'),
//Text('\$5.4'),
//],
//),
//height: 125,
//width: 130,
//decoration: BoxDecoration(
//color: Color(0xFFFFF4E8),
//borderRadius: BorderRadius.all(
//Radius.circular(40),
//),
//),
//),
