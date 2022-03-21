import 'package:flutter/material.dart';

import 'user.dart';

class UserProfileScreen extends StatefulWidget {
  final User dummy = const User('Dharmik', 9313485343, 18, 90, 150);
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
