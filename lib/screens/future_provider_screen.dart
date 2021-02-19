import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterFutureProvider =
    FutureProvider.autoDispose<int>((ref) => Future.value(0));

class FutureProviderScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('FutureProvider'),
      ),
      body: Center(
          child: count.when(
        data: (data) => Text(
          data.toString(),
          style: Theme.of(context).textTheme.headline2,
        ),
        loading: () => CircularProgressIndicator(),
        error: (e, s) => SizedBox(),
      )),
    );
  }
}
