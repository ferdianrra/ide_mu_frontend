import 'package:flutter/material.dart';

class ContentBody extends StatefulWidget {
  const ContentBody({super.key});

  @override
  _ContentBodyState createState() => _ContentBodyState();
}

class _ContentBodyState extends State<ContentBody> {
  final String _selectedBrand = '1. Printer Brand';
  final String _selectedSeries = '2. Printer Series';
  final String _selectedModel = '3. Printer Model';


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "images/backgrounds.jpg"
            ),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "FIND THE RIGHT CARTRIDGES FOR YOUR PRINTER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              color: Colors.white,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        color: const Color(0xfff2f2f2),
                        child: const DefaultTabController(
                          length: 2,
                          child: TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            indicator: BoxDecoration(
                              color: Color(0xff407cc4),
                            ),
                            tabs: [
                              Tab(text: "3-Step Easy Search \u{24C7}"),
                              Tab(text: "Ink Cartridges"),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DropDown("Printer Brand", _selectedBrand, ['1. Printer Brand'], true),
                          DropDown("Printer Series", _selectedSeries, ['2. Printer Series'], false),
                          DropDown("Printer Model", _selectedModel, ['3. Printer Model'], false),
                          SizedBox(
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.orange)),
                                child: const Text("FIND CARTRIDGES", style: TextStyle(color: Colors.white),),
                              )
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget DropDown(String hintText, String? selectedValue, List<String> items, bool isEnabled) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: DropdownButton<String>(
        value: selectedValue,
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: isEnabled ? (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
        } : null,
        hint: Text(hintText),
      ),
    );
  }
}

