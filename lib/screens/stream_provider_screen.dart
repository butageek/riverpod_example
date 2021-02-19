import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStreamProvider =
    StreamProvider.autoDispose<int>((ref) => Stream.value(0));

class StreamProviderScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('StreamProvider'),
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
