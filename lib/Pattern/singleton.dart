class SingleTon {
  static final SingleTon singleTon = SingleTon._(); // static object
  SingleTon._(); // private constructor, so that we couldn't access it outside the file
  static SingleTon getInstance() {
    // return every time just one object
    return singleTon;
  }
}
