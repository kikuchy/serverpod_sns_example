import 'dart:async';

class DataLoader<KEY, RESULT> {
  DataLoader({
    required this.onFetch,
    this.debounceDuration = const Duration(milliseconds: 300),
  });

  final Future<Map<KEY, RESULT>> Function(List<KEY>) onFetch;
  final Duration debounceDuration;

  _DataLoaderState<KEY, RESULT>? _waiting;

  _DataLoaderState<KEY, RESULT> get _current {
    if (_waiting == null) {
      return _newState();
    }
    return _waiting!;
  }

  _DataLoaderState<KEY, RESULT> _newState() {
    late final _DataLoaderState<KEY, RESULT> state;
    state = _DataLoaderState<KEY, RESULT>(
      startAt: DateTime.now(),
      timer: Timer(debounceDuration, () {
        _waiting = null;
        if (state.keys.isNotEmpty) {
          state._completer.complete(onFetch(state.keys));
        }
      }),
    );
    _waiting = state;
    return state;
  }

  Future<RESULT> call(KEY key) {
    final current = _current;
    current.keys.add(key);

    return current._completer.future.then((value) {
      return value[key]!;
    });
  }
}

class _DataLoaderState<KEY, RESULT> {
  final DateTime startAt;
  final List<KEY> keys = [];
  final Completer<Map<KEY, RESULT>> _completer = Completer();
  final Timer timer;

  _DataLoaderState({
    required this.startAt,
    required this.timer,
  });
}
