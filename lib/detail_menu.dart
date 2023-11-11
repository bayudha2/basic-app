import 'package:flutter/material.dart';
import 'dart:async';

import 'package:food_app/model/food_recipe.dart';

final ScrollController _controller = ScrollController();
void _scrollDown() {
  _controller.animateTo(
    _controller.position.maxScrollExtent,
    duration: const Duration(seconds: 1),
    curve: Curves.fastOutSlowIn,
  );
}

class DetailMenu extends StatelessWidget {
  final MenuReceip menu;
  const DetailMenu({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Text(
                      'Recipe',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const StarFav()
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  menu.menu.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 280,
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    child:
                        Image.asset(menu.menu.imageAsset, fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  menu.menu.description,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.grey.withOpacity(0.3)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                    ),
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text(
                              'Servings',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '1',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Preparation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${menu.menu.preparation.toString()} mins',
                              style: const TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Cook',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${menu.menu.time.toString()} mins',
                              style: const TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 10,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: AccodionPanel(
                isIngredients: true,
                menu: menu,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                  // color: const Color.fromRGBO(227, 230, 223, 1),
                  margin: const EdgeInsets.all(0),
                  child: AccodionPanel(
                    menu: menu,
                  )),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Stack(
                children: [
                  Container(
                    height: 15,
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.grey.withOpacity(0.3)),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      height: 10,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // )
          ],
        ),
      ),
    );
  }
}

class AccodionPanel extends StatefulWidget {
  final bool isIngredients;
  final MenuReceip menu;
  const AccodionPanel(
      {super.key, this.isIngredients = false, required this.menu});

  @override
  State<AccodionPanel> createState() => _AccodionPanelState();
}

class _AccodionPanelState extends State<AccodionPanel> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      color: widget.isIngredients
          ? const Color.fromRGBO(227, 230, 223, 1)
          : const Color.fromRGBO(188, 204, 188, 1),
      elevation: 0,
      child: ExpansionTile(
        onExpansionChanged: (bool isOpen) {
          Future.delayed(const Duration(milliseconds: 250), () {
            if (isOpen) _scrollDown();
          });
        },
        controller: ExpansionTileController(),
        tilePadding: const EdgeInsets.only(left: 24.0, right: 24.0),
        shape: Border.all(color: Colors.transparent),
        title: Text(
          widget.isIngredients ? 'Ingredients' : 'Direction',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        children: <Widget>[
          ListTile(
              title: Text(widget.isIngredients
                  ? widget.menu.menu.ingridients.join(', ')
                  : widget.menu.menu.direction)),
        ],
      ),
    );
  }
}

class StarFav extends StatefulWidget {
  const StarFav({super.key});

  @override
  State<StarFav> createState() => _StarFavState();
}

class _StarFavState extends State<StarFav> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade200,
      child: IconButton(
          onPressed: () {
            setState(() {
              isFav = !isFav;
            });
          },
          icon: Icon(isFav ? Icons.star : Icons.star_border_outlined)),
    );
  }
}
