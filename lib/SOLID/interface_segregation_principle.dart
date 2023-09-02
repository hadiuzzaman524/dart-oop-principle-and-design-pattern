/*
Interface segragation principle. 
Many client-specific interfaces are better than one general-purpose interface

Bad code: 

abstract class SmartDevice {
  void makeCall();
  void sendEmail();
  void browseInternet();
  void takePicture();
}

class SmartPhone implements SmartDevice {
  @override
  void makeCall() {
    print("Make a phone call");
  }

  @override
  void sendEmail() {
    print("Send email");
  }

  @override
  void browseInternet() {
    print("Browse internet");
  }

  @override
  void takePicture() {
    print("Take picture");
  }
}

class SmartWatch implements SmartDevice {
  @override
  void makeCall() {
    print("Make a phone call");
  }

  @override
  void sendEmail() {
    print("Send email");
  }

  @override
  void browseInternet() {
    throw UnimplementedError("No feature found");
  }

  @override
  void takePicture() {
    throw UnimplementedError("No feature found");
  }
}

*/

abstract class Phone {
  void makeCall();
}

abstract class EmailDevice {
  void sendEmail();
}

abstract class WebBrowser {
  void browseInternet();
}

abstract class Camera {
  void takePicture();
}

class SmartPhone implements Phone, EmailDevice, WebBrowser, Camera {
  @override
  void makeCall() {
    print("Make a phone call");
  }

  @override
  void sendEmail() {
    print("Send email");
  }

  @override
  void browseInternet() {
    print("Browse internet");
  }

  @override
  void takePicture() {
    print("Take picture");
  }
}

class SmartWatch implements Phone, EmailDevice {
  @override
  void makeCall() {
    print("Make a phone call");
  }

  @override
  void sendEmail() {
    print("Send email");
  }
}

void main() {
  SmartWatch smartWatch = SmartWatch();
  smartWatch.makeCall();
  smartWatch.sendEmail();

  SmartPhone smartPhone = SmartPhone();
  smartPhone.takePicture();
}
