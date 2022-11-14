class LazySingleTon {
  static LazySingleTon? _obj;
  LazySingleTon._();

  static LazySingleTon getInstance() {
    _obj ??= LazySingleTon._();
    return _obj!;
  }
}
