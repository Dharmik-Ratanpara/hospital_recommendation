import 'package:flutter/material.dart';
import 'package:hospital_recommendation/screens/hospital_detail_screen.dart';
import '../models/hospital_dummy.dart';

class HospitalList extends StatelessWidget {
  final String selectedCity;
  const HospitalList(this.selectedCity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hospitals = HospitalDummy().hospitalsInCity(selectedCity);
    final hospitalsName = hospitals.keys.toList();
    return ListView.builder(
      itemCount: hospitalsName.length,
      itemBuilder: (ctx, index) => GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) {
                return HospitalDetailScreen(
                  hospitals.entries.elementAt(index)
                      as Map<String, Map<String, int>>,
                );
              },
            ),
          );
        },
        child: Card(
          elevation: 1,
          margin: const EdgeInsets.symmetric(vertical: 3),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hospitalsName[index],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
