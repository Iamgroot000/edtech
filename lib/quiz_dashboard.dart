import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:edtech/upscfirstscreen.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:get/get.dart';

import 'chatgpt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              AdvancedDrawerValue.visible();
              //_handleMenuButtonPressed,
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.grass_rounded),
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
            ),
            IconButton(
              icon: Icon(Icons.light),
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
            ),

          ],
          title: const Text("EDTECH"),
          titleSpacing: 0.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          elevation: 0.00,
          backgroundColor: Colors.red[400],
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  static const List<String> sampleImages = [
    'assets/pyth.webp',
    'assets/bank.jpg',
    'assets/upsc.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 150,
                ),
                SizedBox(height: 100),
                GestureDetector(
                  onTap: () {
                    Get.to(() => QuestionScreen());
                  },
                  child: FanCarouselImageSlider(
                    imagesLink: sampleImages,
                    isAssets: true,
                    autoPlay: true,
                  ),
                ),
                SizedBox(height: 20),
                // Swipe icon
                Dismissible(
                  key: Key('dismiss'),
                  direction: DismissDirection.down,
                  onDismissed: (direction) {
                    // Handle swipe action
                    Get.to(() => ScreenTwo());
                  },
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                // First row of GridView
                buildGridView([1, 2]),
                SizedBox(height: 20),
                // Second row of GridView
                buildGridView([3, 4]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGridView(List<int> items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Handle grid item click
            if (items[index] == 1) {
              Get.to(() => ScreenThree());
            } else if (items[index] == 2) {
              Get.to(() => ScreenFour());
            } else if (items[index] == 3) {
              Get.to(() => ScreenFive());
            } else if (items[index] == 4) {
              Get.to(() => ScreenSix());
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(25),
              color: Colors.grey,
            ),
            alignment: Alignment.center,
            child: Text('Item ${items[index]}'),
          ),
        );
      },
    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Content for Screen One'),
        ),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text('Content for Screen Two'),
        ),
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
      ),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Text('Content for Screen Three'),
        ),
      ),
    );
  }
}

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Four'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('Content for Screen Four'),
        ),
      ),
    );
  }
}

class ScreenFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Five'),
      ),
      body: Container(
        color: Colors.pink,
        child: Center(
          child: Text('Content for Screen Five'),
        ),
      ),
    );
  }
}

class ScreenSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Six'),
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text('Content for Screen Six'),
        ),
      ),
    );
  }
}
