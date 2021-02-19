import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/screens/change_notifier_provider_screen.dart';
import 'package:riverpod_example/screens/future_provider_screen.dart';
import 'package:riverpod_example/screens/provider_advanced_screen.dart';
import 'package:riverpod_example/screens/provider_screen.dart';
import 'package:riverpod_example/screens/scoped_provider_screen.dart';
import 'package:riverpod_example/screens/state_notifier_provider_screen.dart';
import 'package:riverpod_example/screens/state_provider_screen.dart';
import 'package:riverpod_example/screens/stream_provider_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Riverpod Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod example'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Provider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProviderScreen()),
                );
              },
              child: Text('Provider'),
            ),
            // StateProvider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StateProviderScreen()),
                );
              },
              child: Text('StateProvider'),
            ),
            Divider(),
            // StateNotifierProvider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StateNotifierProviderScreen()),
                );
              },
              child: Text('StateNotifierProvider'),
            ),
            // ChangeNotifierProvider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangeNotifierProviderScreen()),
                );
              },
              child: Text('ChangeNotifierProvider'),
            ),
            Divider(),
            // FutureProvider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FutureProviderScreen()),
                );
              },
              child: Text('FutureProvider'),
            ),
            // StreamProvider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StreamProviderScreen()),
                );
              },
              child: Text('StreamProvider'),
            ),
            Divider(),
            // ScopedProvider
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScopedProviderScreen()),
                );
              },
              child: Text('ScopedProvider'),
            ),
            // Provider (advanced)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProviderAdvancedScreen()),
                );
              },
              child: Text('Provider (advanced)'),
            ),
          ],
        ),
      ),
    );
  }
}
