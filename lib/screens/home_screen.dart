import 'package:flutter/material.dart';

import '../widgets/hospital_list.dart';
import '../widgets/my_search_delegate.dart';
import '../widgets/side_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCity = '';

  void setCity(String city) {
    setState(() {
      selectedCity = city;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(setCity),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const SideDrawer(),
      body: selectedCity.isEmpty
          ? const Center(
              child: Text(
                  'No Hospital have registered in selected city\nKindly search for other city'),
            )
          : HospitalList(selectedCity),
    );
  }
}
