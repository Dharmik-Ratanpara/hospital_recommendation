import 'package:flutter/material.dart';
import 'package:hospital_recommendation/widgets/side_drawer.dart';

class HospitalDetailScreen extends StatelessWidget {
  final Map<String, Map<String, int>> hospital;

  const HospitalDetailScreen(this.hospital, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => Card(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              hospital.keys.toString(),
            ),
          ),
          drawer: const SideDrawer(),
          body: Column(
            children: [
              Text(
                hospital.keys.toString(),
              ),
              const Text('Availible bed count'),
              ...hospital.values.map(
                (bedType) {
                  return Text(
                    '${bedType.keys.toString()} : ${hospital[bedType]}',
                  );
                },
              ).toList(),
              Flexible(
                child: Container(),
                fit: FlexFit.tight,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Book a bed'))
            ],
          ),
        ),
      ),
    );
  }
}
