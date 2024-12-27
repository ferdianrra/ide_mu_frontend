import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final String price;

  const CardProduct({
    super.key,
    required this.image,
    required this.name,
    required this.type,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 400,
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Image(
                image: AssetImage(image),
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                        ),
                        Text(
                          "($type)",
                          style: const TextStyle(
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$$price"),
                        SizedBox(
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.orange)),
                              child: const Text("ADD TO CARD", style: TextStyle(color: Colors.white),),
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
