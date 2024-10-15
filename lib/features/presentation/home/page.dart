import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_ecommerce_skl/features/presentation/mycart/product.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  static List<String> categoriesName = [
    'Electronic',
    'Fashion',
    'Furniture',
    'Industrial'
  ];

  static List<String> carouselImage = [
    'assets/carousel_image.png',
    'assets/carousel_image.png',
    'assets/carousel_image.png',
  ];

  static List<String> categoriesIcon = ['📱', '👜', '🛋️', '🚗'];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "ElekMart",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_outlined,
                              size: 32,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.account_circle,
                                size: 32,
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          width: 328,
                          height: 148,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: PageView.builder(
                              controller: _controller,
                              itemBuilder: (BuildContext context, int index) {
                                return Stack(
                                  alignment: AlignmentDirectional.bottomStart,
                                  children: [
                                    Image.asset(
                                      HomePage.carouselImage[index],
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                            text: '30% OFF\n',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: 'On Headphones\n',
                                            style: TextStyle(fontSize: 12)),
                                        TextSpan(
                                            text: 'Exclusive Sales',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold))
                                      ]))
                                    ),
                                  ],
                                );
                              },
                              itemCount: HomePage.carouselImage.length,
                            ),
                          )
                      ),
                      Positioned(
                        bottom: 10,
                        right: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SmoothPageIndicator(
                                controller: _controller,  // PageController
                                count:  3,
                                effect:  const WormEffect(
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  activeDotColor: Color(0xff21D4B4)
                                ), // your preferred effect
                                onDotClicked: (index){

                                }
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "SEE ALL",
                            style: TextStyle(fontSize: 14, color: Colors.cyan),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: SizedBox(
                      width: 400,
                      height: 60,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                              width: 76,
                              height: 60,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: const BorderSide(
                                            color: Colors.grey, width: 1))),
                                child: Column(
                                  children: [
                                    Text(HomePage.categoriesIcon[index]),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      HomePage.categoriesName[index],
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ));
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                        itemCount: 4,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Latest Products",
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "SEE ALL",
                            style: TextStyle(fontSize: 14, color: Colors.cyan),
                          ))
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: CustomProducts(name: "Nike air jordan retro fashion", price: 126.00, colorCount: 2, image: "assets/shoes1.png",),
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductPage()));
                          });
                        },
                      ),
                      CustomProducts(name: "Classic new black glasses", price: 8.50, colorCount: 2, image: "assets/glasses1.png"),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomProducts(name: "Brown box Luxury Bag fror", price: 98.00, colorCount: 2, image: "assets/bag1.png"),
                      CustomProducts(name: "P47 Wireless headphones", price: 38.45, colorCount: 2, image: "assets/headset1.png"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomProducts extends StatefulWidget {
  CustomProducts({
    super.key,
    required this.name,
    required this.price,
    required this.colorCount,
    required this.image
  });

  String name;
  int colorCount;
  double price;
  String image;

  @override
  State<CustomProducts> createState() => _CustomProductsState();
}

class _CustomProductsState extends State<CustomProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 138,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24),
              image: DecorationImage(image: AssetImage(widget.image))
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "All ${widget.colorCount} Colors",
                style:
                    const TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(widget.name,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700)),

          Text("\$${widget.price.toStringAsFixed(2)}")
        ],
      ),
    );
  }
}
