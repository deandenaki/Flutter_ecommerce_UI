import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_ecommerce_skl/features/presentation/categories/page.dart';
import 'package:ui_ecommerce_skl/features/presentation/home/page.dart';
import 'package:ui_ecommerce_skl/features/presentation/mycart/page.dart';
import 'package:ui_ecommerce_skl/features/presentation/profile/page.dart';
import 'package:ui_ecommerce_skl/features/presentation/wishlist/page.dart';
import 'package:ui_ecommerce_skl/icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Widget> page = [
    HomePage(),
    CategoriesPage(),
    MyCartPage(),
    WishlistPage(),
    ProfilePage()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            selectedIndex = index;
          });
        },
        selectedLabelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedIconTheme: const IconThemeData(color: Color(0xff21D4B4)),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        currentIndex: selectedIndex,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(CustomIcon.home_2), label: "Home"),
          BottomNavigationBarItem(icon: Icon(CustomIcon.category_2), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(CustomIcon.shopping_cart), label: "My Cart"),
          BottomNavigationBarItem(icon: Icon(CustomIcon.heart), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Profile"),
        ],
      ),
    );
  }
}
