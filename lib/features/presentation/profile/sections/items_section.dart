import 'package:flutter/material.dart';
import '../../../../icons.dart';


class ProfileItems extends StatelessWidget {
  const ProfileItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Personal Information",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12,),
            ListProfile(title: "Shipping Address", icon: CustomIcon.box,),
            ListProfile(title: "Payment Method", icon: CustomIcon.card_tick,),
            ListProfile(title: "Order History", icon: CustomIcon.receipt_edit,),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Support & Information",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12,),
            ListProfile(title: "Privacy Policy", icon: CustomIcon.shield_tick),
            ListProfile(title: "Terms & Conditions", icon: CustomIcon.document_text),
            ListProfile(title: "FAQs", icon: CustomIcon.message_question),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Account Management",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12,),
            ListProfile(title: "Change Password", icon: CustomIcon.lock),
            ListProfile(title: "Dark Theme", icon: CustomIcon.mobile),
          ],
        ),
      ),
    );
  }
}

class ListProfile extends StatelessWidget {
  ListProfile({
    super.key,
    required this.title,
    required this.icon
  });

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  const SizedBox(width: 12,),
                  Text(title, style: const TextStyle(fontSize: 14, color: Colors.blueGrey, fontWeight: FontWeight.w600),),
                ],
              ),
              const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blueGrey,),
            ],
          ),
        ),
        const Divider(color: Colors.grey)

      ],
    );
  }
}