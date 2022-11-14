import 'package:design_patter_with_dart/external_classes/circle.dart';
import 'package:design_patter_with_dart/external_classes/rectangle.dart';
import 'package:design_patter_with_dart/external_classes/shape.dart';
import 'package:design_patter_with_dart/external_classes/triangle.dart';

class ShapeMakerFacade {
  late Shape circle;
  late Shape rectangle;
  late Shape triangle;

  ShapeMakerFacade() {
    circle = Circle();
    rectangle = Rectangle();
    triangle = Triangle();
  }

  void drawCircle() {
    circle.draw();
  }

  void drawTriangle() {
    triangle.draw();
  }

  void drawRectangle() {
    rectangle.draw();
  }
}
