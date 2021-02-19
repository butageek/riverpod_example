import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>((ref) => 0);

class StateProviderScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterStateProvider).state;

    return Scaffold(
      appBar: AppBar(
        title: Text('StateProvider'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(counterStateProvider).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
