import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/detail_menu.dart';
import 'package:food_app/model/food_recipe.dart';
import 'package:food_app/store_model.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:provider/provider.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  var isSlide = true;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<StoreModel>(
      builder: (storeContext, value, child) =>
          Column(mainAxisSize: MainAxisSize.max, children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${value.listMenu.length} recipes'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                    minSize: double.minPositive,
                    padding: EdgeInsets.zero,
                    child: Icon(Icons.view_carousel_outlined,
                        color: isSlide ? Colors.black : Colors.grey, size: 25),
                    onPressed: () {
                      setState(() {
                        isSlide = true;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CupertinoButton(
                    minSize: double.minPositive,
                    padding: EdgeInsets.zero,
                    child: Icon(Icons.window_outlined,
                        color: !isSlide ? Colors.black : Colors.grey, size: 25),
                    onPressed: () {
                      setState(() {
                        isSlide = false;
                        _index = 0;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            height:
                MediaQuery.of(context).size.height * (isSlide ? 0.55 : 0.65),
            child: isSlide
                ? LoopPageView.builder(
                    itemCount: value.listMenu.length,
                    controller: LoopPageController(viewportFraction: 0.75),
                    onPageChanged: (index) => setState(() => _index = index),
                    itemBuilder: (context, index) => cardContainer(
                        context, value,
                        index: index, indexSnap: _index))
                : Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: GridView.count(
                      padding: const EdgeInsets.all(0),
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: value.listMenu.map((menu) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailMenu(menu: menu);
                            }));
                          },
                          child: Card(
                            elevation: 1,
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(menu.menu.imageAsset),
                                      fit: BoxFit.cover)),
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.center,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black.withOpacity(0.65)
                                    ])),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      menu.menu.title,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ))
      ]),
    );
  }
}

Widget cardContainer(BuildContext context, StoreModel value,
    {int index = 0, int indexSnap = 0}) {
  final MenuReceip menu = value.listMenu[index];

  return AnimatedPadding(
    duration: const Duration(microseconds: 400),
    curve: Curves.fastOutSlowIn,
    padding: EdgeInsets.all(indexSnap == index ? 0.0 : 10.0),
    child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailMenu(menu: menu);
        }));
      },
      child: Card(
          elevation: 1,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(menu.menu.imageAsset),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.black.withOpacity(.0),
                      Colors.black.withOpacity(0.65),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      menu.menu.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 4, left: 8, right: 8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.25),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14))),
                          child: Text(
                            '${menu.menu.time.toString()} mins',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 4, left: 8, right: 8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.25),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14))),
                          child: Text(
                            '${menu.menu.views} views',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 8, right: 8),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.25),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(14))),
                            child: Row(
                              children: [
                                const Icon(Icons.star,
                                    color: Colors.white, size: 12),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  menu.menu.rating.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ))),
    ),
  );
}
