import 'package:flutter/material.dart';

class ContentTab extends StatelessWidget {
  const ContentTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        color: const Color(0xff4884dc),
        child: const DefaultTabController(
          length: 5,
          child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicator: BoxDecoration(
                color: Color(0xff407cc4),
              ),
              tabs: [
                Tab(text: "Home"),
                Tab(text: "Ink Cartridges"),
                Tab(text: "Toner Cartridges"),
                Tab(text: "Contact Us"),
                Tab(text: "Login/Register"),
              ]),
        ),
      ),
    );
  }
}