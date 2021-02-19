import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider<CounterChangeNotifier>(
    (ref) => CounterChangeNotifier());

class ChangeNotifierProviderScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierProvider'),
      ),
      body: Center(
        child: Text(
          '${counter.count}',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(counterProvider).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterChangeNotifier extends ChangeNotifier {
  CounterChangeNotifier([this.count = 0]);

  int count;

  void increment() {
    count++;
    notifyListeners();
  }
}
