import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sahara_homepage/Donationscreens.dart';
import 'functions.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          height: 350,
          child: Stack(children: [
            /* Image.asset(
              'assets/images/background image.jpeg',
              fit: BoxFit.fill,
              height: 400,
              width: double.infinity,
            ),*/
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
              height: 350,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\n\n𝘾𝙝𝙖𝙧𝙞𝙩𝙮𝙈𝙖𝙩𝙚',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ])),
      SizedBox(
        height: 5,
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(30), bottom: Radius.circular(2))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              '      Categories:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Spacer(),
              functions.container(Icons.fastfood, Colors.teal, ' Food', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donateitemscreen()));
              }),
              Spacer(),
              functions.container(
                  Icons.monetization_on_outlined, Colors.teal, ' Money', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donatemoneyscreen()));
              }),
              Spacer(),
              functions.container(
                  Icons.cyclone_outlined, Colors.teal, 'Clothing', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donateclothscreen()));
              }),
              Spacer(),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Spacer(),
              functions.container(
                  Icons.menu_book_rounded, Colors.teal, ' Education', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donatestationaryscreen()));
              }),
              Spacer(),
              functions.container(
                  Icons.medical_information_outlined, Colors.teal, 'Medical',
                  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donatemedicalitems()));
              }),
              Spacer(),
              functions.container(Icons.devices_other, Colors.teal, 'Other',
                  () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => otherdonation()));
              }),
              Spacer(),
            ]),
            SizedBox(
              height: 12,
            ),
            Text(
              '      Start your donation journey:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200, autoPlay: true, enlargeCenterPage: true),
              items: [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
              ]
                  .map((item) => Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 600.0),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      )
    ])));
  }
}
/*  CarouselSlider(
              options: CarouselOptions(
                  height: 200, autoPlay: true, enlargeCenterPage: true),
              items: [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
              ]
                  .map((item) => Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 600.0),
                        ),
                      ))
                  .toList(),
            ),*/
