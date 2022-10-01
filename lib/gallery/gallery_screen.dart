import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Filter { All, Nature, Religious, City }

class GalleryScreen extends HookConsumerWidget {
  const GalleryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: Filter.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/images/logo.png"),
              SizedBox(
                width: 40,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TabBar(
                    indicatorColor: Colors.pink,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: List.generate(
                      Filter.values.length,
                      (index) => Tab(text: Filter.values.elementAt(index).name),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: size.width / 5,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      )
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 16,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('EN'),
                    Icon(Icons.arrow_drop_down_rounded),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(onPressed: () {}, child: const Text('Log in')),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          actions: [],
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
