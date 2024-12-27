import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idemu_web/content/card_product.dart';

class Contentproduct extends StatefulWidget {
  const Contentproduct({super.key});

  @override
  _ContentproductState createState() => _ContentproductState();
}

class _ContentproductState extends State<Contentproduct> {
  bool _isHoveredLeft = false;
  bool _isHoveredRight = false;

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'images/images_a.png',
      'images/images_b.png',
      'images/images_c.png'
    ];

    List<String> name = [
      'Hp 62 Black Ink Cartridge',
      'Canon MF-3110 Toner',
      'Hp 62 Black Ink Cartridge',
    ];
    List<String> type = [
      'HPC2P04E',
      'C2P04E',
      'HPC2P04E',
    ];
    List<String> prices = [
      '9.49',
      '36.45',
      '5.99',
    ];

    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHoveredLeft = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHoveredLeft = false;
              });
            },
            child: Icon(
              Icons.arrow_circle_left_outlined,
              color: _isHoveredRight ? Colors.orange :Colors.grey,
              size: 50,
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            height: 300,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return CardProduct(
                    image: image[index],
                    name: name[index],
                    type: type[index],
                    price: prices[index],
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHoveredRight = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHoveredRight = false;
              });
            },
            child: Icon(
              Icons.arrow_circle_right_outlined,
              color: _isHoveredRight ? Colors.orange :Colors.grey,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
