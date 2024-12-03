import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(super.initialState);

  void onViewCreated() {}

  @override
  void emit(T state) {
    if (isClosed) return;
    Future.delayed(Duration.zero, () {
      super.emit(state);
    });
  }

}
