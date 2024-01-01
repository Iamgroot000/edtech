import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Set the default light theme
      darkTheme: ThemeData.dark(), // Set the dark theme

      home: Scaffold(
        appBar: AppBar(
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
    // Add other asset paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 150,
            ),
            SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                ScreenOne();

                print('Tapped on the image!');
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
              },
              child: FanCarouselImageSlider(
                imagesLink: sampleImages,
                isAssets: true,
                autoPlay: true,
              ),
            ),
          ],
        ),
      ),
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
        color: Colors.blue, // Set the background color to grey
        child: Center(
          child: Text('Content for Screen One'),
        ),
      ),
    );
  }
}

// Define ScreenTwo and ScreenThree similarly...
