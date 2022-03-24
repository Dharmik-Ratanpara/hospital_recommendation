import 'package:flutter/material.dart';

import '../models/hospital_dummy.dart';

class MySearchDelegate extends SearchDelegate {
  final void Function(String) setCity;

  MySearchDelegate(this.setCity);

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> allCities = HospitalDummy().getCities();
    List<String> suggestions = allCities
        .where((element) => element.toLowerCase().contains(query))
        .toList();
    return suggestions.isEmpty
        ? const Text(
            'No Hospital have registered in selected city\nKindly search for other city')
        : ListView.builder(
            itemCount: suggestions.length,
            itemBuilder: (context, index) {
              final suggestion = suggestions[index];

              return ListTile(
                title: Text(suggestion),
                onTap: () {
                  query = suggestion;
                  setCity(query);
                  close(context, null);
                },
              );
            },
          );
  }
}
