import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/cartasset.png",
            width: 240,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Your cart is empty",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Looks like you have not added anything in your cart. Go ahead and explore top categories.",
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
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
    );
  }
}
