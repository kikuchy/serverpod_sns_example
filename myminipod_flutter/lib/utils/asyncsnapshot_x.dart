import 'package:flutter/widgets.dart';

extension AsyncsnapshotX<T> on AsyncSnapshot<T> {
  R when<R>({
    required R Function(T data) data,
    required R Function() loading,
    required R Function(Object error, StackTrace? stackTrace) error,
  }) {
    if (hasError) {
      return error(error, stackTrace);
    } else if (connectionState == ConnectionState.waiting) {
      return loading();
    } else {
      return data(this.data!);
    }
  }
}
