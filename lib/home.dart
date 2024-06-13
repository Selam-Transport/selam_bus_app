import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TapPageSelector_OutputState();
}

// Don't forget TickerProviderStateMixin
// because we will use "vsync: this" later
// ignore: camel_case_types
class _TapPageSelector_OutputState extends State<HomePage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  // the children of the TabView
  final _tabViewChildren = [
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
      ),
    ),
    Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Shop',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'News',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
      ),
    )
  ];

  // initialize the tab controller
  @override
  void initState() {
    _tabController =
        TabController(length: _tabViewChildren.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: TabBarView(
            controller: _tabController,
            children: _tabViewChildren,
          ),
        ),
        SizedBox(
          height: 50,
          child: TabPageSelector(
            controller: _tabController,
            indicatorSize: 20,
            selectedColor: Colors.blueAccent,
            color: Colors.orangeAccent,
          ),
        ),
      ],
    );
  }
}
