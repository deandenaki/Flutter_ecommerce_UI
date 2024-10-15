import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text("Categories"),
        elevation: 0.3,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCategories(
                  title: "Mobile Devices",
                  icon: "📱",
                ),
                CustomCategories(
                  title: "Fashion",
                  icon: "👜",
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCategories(
                  title: "Furniture",
                  icon: "🛋️",
                ),
                CustomCategories(title: "Industrial", icon: "🚗"),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCategories(
                  title: "Home Decor",
                  icon: "🎁",
                ),
                CustomCategories(
                  title: "Home Electronic",
                  icon: "📺",
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCategories(
                  title: "Health",
                  icon: "🩺",
                ),
                CustomCategories(
                  title: "Construction & Real Estate",
                  icon: "🏠",
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCategories(
                  title: "Fabrication Service",
                  icon: "📏",
                ),
                CustomCategories(
                  title: "Electrical Equipment",
                  icon: "🔌",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomCategories extends StatelessWidget {
  CustomCategories({super.key, required this.title, required this.icon});

  String title;
  String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 100,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Colors.grey, width: 1))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                icon,
                style: const TextStyle(fontSize: 32),
              ),
              SizedBox(height: 2,),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
