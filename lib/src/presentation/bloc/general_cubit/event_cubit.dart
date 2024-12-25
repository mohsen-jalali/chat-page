import 'dart:async';

import 'package:gamer_tag/src/presentation/bloc/general_cubit/base_cubit.dart';

class EventCubit<E, S> extends BaseCubit<S> {
  EventCubit(
    super.initialState,
  );

  E? lastEvent;

  final _eventStream = StreamController<E>();

  @override
  Future<void> close() {
    _eventStream.close();
    return super.close();
  }


  Stream<E> get eventStream => _eventStream.stream;

  emitEvent(E event) {
    lastEvent = event;

    if (_eventStream.isClosed || _eventStream.isPaused) return;
    _eventStream.add(event);
  }
}
