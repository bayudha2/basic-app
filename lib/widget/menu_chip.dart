import 'package:flutter/material.dart';
import 'package:food_app/store_model.dart';
import 'package:provider/provider.dart';

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

class MenuChip extends StatefulWidget {
  const MenuChip({super.key});

  @override
  State<MenuChip> createState() => _InputChipState();
}

class _InputChipState extends State<MenuChip> {
  @override
  Widget build(BuildContext context) {
    return Consumer<StoreModel>(
        builder: (context, value, child) => SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: MenuFilter.values.map((MenuFilter menu) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: FilterChip(
                      label: Text(
                        menu.name.capitalize(),
                        style: TextStyle(
                            color: value.listSelected.contains(menu)
                                ? Colors.white
                                : Colors.black),
                      ),
                      selectedColor: Colors.black,
                      showCheckmark: false,
                      selectedShadowColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      selected: value.listSelected.contains(menu),
                      onSelected: (bool selected) {
                        setState(() {
                          final store = context.read<StoreModel>();
                          if (selected) {
                            store.addItemm(menu);
                          } else {
                            store.removeItem(menu);
                          }
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ));
  }
}
