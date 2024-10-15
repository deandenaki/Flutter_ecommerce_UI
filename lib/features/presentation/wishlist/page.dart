import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/wishlistasset.png",
                width: 240,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Your wishlist is empty",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Tap heart button to start saving your favorite items.",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 24,),
              SizedBox(
                width: 328,
                height: 60,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: const Text(
                      "Explore Categories",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
