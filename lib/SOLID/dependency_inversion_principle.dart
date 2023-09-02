/*
class should depend on interface rather than concrete class. 

Bad code: 
class WiredKeyboard {}

class WiredMouse {}

class BluetoothKeyboard {}

class BluetoothMouse {}

/// This Windows class depend for a concrete class not interface
/// Its doesn't support the bluetooth mouse or keyboard in future.
class Windows {
  late WiredKeyboard wiredKeyboard;
  late WiredMouse wiredMouse;
  Windows() {
    wiredKeyboard = WiredKeyboard();
    wiredMouse = WiredMouse(); 
  }
}

*/

abstract class KeyBoard {}

abstract class Mouse {}

class WiredKeyboard implements KeyBoard {}

class BluetoothKeyboard implements KeyBoard {}

class WiredMouse implements Mouse {}

class BluetoothMouse implements Mouse {}

/// Windows class depend on Kyeboard , and Mouse interface, so that its hold all kind of
/// mouse and keyboard
class Windows {
  late KeyBoard keyBoard;
  late Mouse mouse;
  Windows({required this.keyBoard, required this.mouse});

  void showConfiguration() {
    print(keyBoard.runtimeType);
    print(mouse.runtimeType);
  }
}

void main() {
  WiredKeyboard wiredKeyboard = WiredKeyboard();
  BluetoothMouse bluetoothMouse = BluetoothMouse();

  Windows myPc = Windows(keyBoard: wiredKeyboard, mouse: bluetoothMouse);
  myPc.showConfiguration();
}
