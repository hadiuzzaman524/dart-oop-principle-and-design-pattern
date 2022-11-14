import 'package:design_patter_with_dart/facade.dart';
import 'package:design_patter_with_dart/lazy_singleton.dart';
import 'package:design_patter_with_dart/singleton.dart';

void main() {
  final SingleTon obj1 = SingleTon.getInstance();
  final SingleTon obj2 = SingleTon.getInstance();
  print(obj1 == obj2); // return true
  /*
  This expression proved that we just create the one object of SingleTon class or pattern. 

  The singleton class object always take the memory space even not create the object ( SingleTon obj; )
  which is costly. so that using the lazy singleton concept we can reduce the memory space.
  */
  final LazySingleTon obj3 = LazySingleTon.getInstance();
  final LazySingleTon obj4 = LazySingleTon.getInstance();
  print(obj3 == obj4);

  /*Facade Design Pattern 
  Facade pattern hides the complexities of the system and provides an interface to the client
   using which the client can access the system. This type of design pattern comes under 
   structural pattern as this pattern adds an interface to existing system to hide its 
   complexities.

This pattern involves a single class which provides simplified methods required by client and
 delegates calls to methods of existing system classes.
  */
  ShapeMakerFacade shapeMakerFacade = ShapeMakerFacade();
  shapeMakerFacade.drawCircle();
  shapeMakerFacade.drawRectangle();
  shapeMakerFacade.drawTriangle();
}
