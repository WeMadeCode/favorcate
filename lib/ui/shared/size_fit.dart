import 'dart:ui';

class SizeFit {
  // 1.基本信息
  static var physicalWidth = 0.0;
  static var physicalHeight = 0.0;
  static var screenWidth = 0.0;
  static var screenHeight = 0.0;
  static var dpr = 0.0;
  static var statusHeight = 0.0;
  static var rpx = 0.0;
  static var px = 0.0;

  static void initialize({double standardSize = 750}) {
    // 1.手机的物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    // 2.获取dpr
    dpr = window.devicePixelRatio;

    // 3.宽度和高度
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;

    // 4.状态栏高度
    statusHeight = window.padding.top / dpr;

    // 5.计算rpx的大小
    rpx = screenWidth / standardSize;
    px = screenWidth / standardSize * 2;
  }

  static double setRpx(double size) {
    return rpx * size;
  }

  static double setPx(double size) {
    return px * size;
  }
}
