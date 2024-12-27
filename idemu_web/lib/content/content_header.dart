import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Row(
          children: [
            Image(
              image: AssetImage("images/king.png"),
              height: 90,
              width: 90,
            ),
            SizedBox(width: 20),
            Text(
              "CARTRIDGE KINGS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            )
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 200,
                child: SearchBar(hintText: "Search", trailing:  [Icon(Icons.search)])
            ),
            const SizedBox(width: 30),
            SizedBox(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.orange)),
                  child: const Text(
                      "Cart(1)",
                    style: TextStyle(color: Colors.white)
                  ),
                )
            )
          ],
        )
      ],
    );
  }
}

