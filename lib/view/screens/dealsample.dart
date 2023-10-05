import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DealHomeScreen extends StatefulWidget {
  const DealHomeScreen({Key? key}) : super(key: key);

  @override
  State<DealHomeScreen> createState() => _DealHomeScreenState();
}

class _DealHomeScreenState extends State<DealHomeScreen> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: CarouselSlider(
                items: imgList.map((item) {
                  return Container(
                    width: double.infinity,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 500),
                      ),
                    ),
                  );
                }).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2.0,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? Colors.red
                            : Colors.teal,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.yellow,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              scrollDirection: Axis.vertical,
              itemCount: 24, // Adjust this as needed
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image.network(
                        'https://picsum.photos/250?image=$index',
                        width: 150, // Adjust the width as needed
                        height: 150, // Adjust the height as needed
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Product $index',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$99.99', // Add the price here
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}