import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Color(0XFFf2f2f2)
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                StyledLink(text: "Frahchise Opportunities", onTap: (){}),
                const SizedBox(width: 30),
                StyledLink(text: "Help", onTap: (){}),
                const SizedBox(width: 30),
                StyledLink(text: "Feedback", onTap: (){}),
              ],
            ),
            Row(
                children: [
                  Row(
                    children: [
                      StyledLink(text: "Hello@gmail.com", onTap: (){}),
                      const SizedBox(width: 30),
                      StyledLink(text: "0800 022 0 22", onTap: (){}),
                    ],
                  )
                ]
            )
          ]
      )
      ,
    );
  }
}

class StyledLink extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const StyledLink({required this.text, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

