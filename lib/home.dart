import 'package:flutter/material.dart';
import 'package:food_app/widget/filter_view.dart';
import 'package:food_app/widget/search_input.dart';
import 'package:food_app/widget/menu_chip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SafeArea(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    'Get cooking today!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: SearchFood()),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const MenuChip()),
              const SizedBox(
                height: 16,
              ),
              const FilterView(),
            ],
          ),
        ),
      ),
    );
  }
}
