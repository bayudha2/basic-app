import 'package:flutter/material.dart';
import 'package:food_app/store_model.dart';
import 'package:provider/provider.dart';

class SearchFood extends StatefulWidget {
  const SearchFood({super.key});

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, value, child) => TextField(
              decoration: const InputDecoration(
                  hintText: 'Search recipe',
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 15)),
              onChanged: (String value) {
                setState(() {
                  final store = context.read<StoreModel>();
                  store.searchItem(value);
                });
              },
            ));
  }
}
