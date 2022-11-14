import 'package:design_patter_with_dart/singleton.dart';

void main() {
  final SingleTon obj1 = SingleTon.getInstance();
  final SingleTon obj2 = SingleTon.getInstance();
  print(obj1 == obj2);
  print(obj2);
}
