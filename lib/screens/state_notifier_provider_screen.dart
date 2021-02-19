import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterStateNotifier>(
    (ref) => CounterStateNotifier());

class StateNotifierProviderScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(counterProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('StateNotifierProvider'),
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

class CounterStateNotifier extends StateNotifier<Counter> {
  CounterStateNotifier([Counter counter]) : super(counter ?? Counter(0));

  void increment() {
    state = Counter(state.count + 1);
  }
}

class Counter {
  final int count;

  Counter(this.count);
}
