import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ScopedProvider<int>((ref) {
  throw UnimplementedError();
});

class ScopedProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        counterProvider.overrideWithValue(0),
      ],
      child: DetailsPage(),
    );
  }
}

class DetailsPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('ScopedProvider'),
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
