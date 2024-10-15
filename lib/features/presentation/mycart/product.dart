import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final _controller = PageController();

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 300,
                      child: PageView.builder(
                        controller: _controller,
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(
                            "assets/bag1.png",
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 165,
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect: const WormEffect(dotWidth: 10, dotHeight: 10),
                        )),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  "Top Rated",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "Free Shipping",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Loop Silicone Strong\nMagnetic watch",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                Text(
                                  "\$ 15.25",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$ 20.00",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const ReadMoreText(
                          "Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for extended wear. Its lightweight design allows for a seamless blend of comfort and durability. \n \n One of the standout features of this watch band is its strong magnetic closure. The powerful magnets embedded within the band provide a secure and reliable connection, ensuring that your smartwatch stays firmly in place throughout the day. Say goodbye to worries about accidental detachment or slippage - the magnetic closure offers a peace of mind for active individuals on the go. \n \nThe Loop Silicone Strong Magnetic Watch Band is highly versatile, compatible with a wide range of smartwatch models. Its adjustable strap length allows for a customizable fit, catering to various wrist sizes. Whether you're engaging in intense workouts or attending formal occasions, this watch band effortlessly adapts to your style and activity level.",
                          trimMode: TrimMode.Line,
                          trimLines: 5,
                          colorClickableText: Colors.pink,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: ' Show less',
                          moreStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          lessStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Color",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                width: 4,
                              );
                            },
                            itemCount: 5,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text("Quantity"),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 125,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (quantity >= 1) {
                                      setState(() {
                                        quantity--;
                                      });
                                    }
                                  },
                                  icon: const Icon(Icons.remove)),
                              Text(quantity.toString()),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  icon: const Icon(Icons.add))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                              child: Text("Buy Now",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black))),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                              child: Text("Add To Cart",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white))),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
