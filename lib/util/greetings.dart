import 'package:flutter/material.dart';

class Greeting extends StatefulWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  String _greeting = '';

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  // Update the greeting
  void _updateGreeting() {
    DateTime now = DateTime.now();
    if (now.hour >= 6 && now.hour < 12) {
      setState(() {
        _greeting = 'Good Morning,';
      });
    } else if (now.hour >= 12 && now.hour < 18) {
      setState(() {
        _greeting = 'Good Afternoon,';
      });
    } else {
      setState(() {
        _greeting = 'Good Evening,';
      });
    }
    Future.delayed(const Duration(minutes: 1), _updateGreeting);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _greeting,
      style: const TextStyle(fontSize: 25, color: Colors.black87),
    );
  }
}
