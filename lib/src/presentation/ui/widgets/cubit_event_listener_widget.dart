import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/event_cubit.dart';

class CubitEventListener<C extends EventCubit<E, S>, E, S>
    extends StatefulWidget {
  const CubitEventListener(
      {super.key, required this.child, required this.listener, this.cubit});

  final Widget child;
  final C? cubit;
  final BlocWidgetListener<E> listener;

  @override
  State<CubitEventListener<C, E, S>> createState() =>
      _CubitEventListenerState<C, E, S>();
}

class _CubitEventListenerState<C extends EventCubit<E, S>, E, S>
    extends State<CubitEventListener<C, E, S>> {
  late final cubit = widget.cubit ?? context.read<C>();

  StreamSubscription<E>? _subscription;

  @override
  void dispose() {
    _unsubscribe();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _subscribe();
  }

  void _subscribe() {
    _subscription = cubit.eventStream.listen((state) {
      widget.listener(context, state);
    });
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}