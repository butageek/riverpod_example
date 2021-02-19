import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>((ref) => 0);
final isEvenProvider = Provider<bool>((ref) {
  final counter = ref.watch(counterStateProvider);
  return (counter.state % 2 == 0);
});

class ProviderAdvancedScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterStateProvider).state;

    return Scaffold(
      appBar: AppBar(
        title: Text('StateProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline2,
            ),
            CounterIsEven(),
          ],
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

class CounterIsEven extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isEven = watch(isEvenProvider);

    return Text(isEven ? 'Is Even' : 'Not even',
        style: Theme.of(context).textTheme.headline2);
  }
}
