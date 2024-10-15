import 'package:flutter/material.dart';
import 'package:ui_ecommerce_skl/features/presentation/profile/sections/header_section.dart';
import 'package:ui_ecommerce_skl/features/presentation/profile/sections/items_section.dart';
import 'package:ui_ecommerce_skl/icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      child: ListView(
          children: const [
            SizedBox(height: 24,),
            ProfileHeader(),
            SizedBox(
              height: 24,
            ),
            ProfileItems()
          ],
      ),
    );
  }
}
