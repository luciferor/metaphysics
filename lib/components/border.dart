import 'package:flutter/material.dart';

class GradientBoundPainter extends CustomPainter {
  final List<Color> colors;
  final double width;
  final double height;
  final double strokeWidth;
  final double radius;
  const GradientBoundPainter({
    Key? key,
    required this.colors,
    required this.width,
    required this.height,
    required this.radius,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    //定义矩形的宽高
    final rectWidth = width, rectHeight = height;
    //圆角。必要的话可以将其作为变量传进来
    //定义矩形的位置和尺寸
    Rect rect = Offset(
            size.width / 2 - rectWidth / 2, size.height / 2 - rectHeight / 2) &
        Size(rectWidth, rectHeight);
    //RRect.fromRectAndRadius一个具有圆角的矩形
    RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    //绘制
    final paint = Paint()
      //创建线性渐变着色器
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: colors,
      ).createShader(rect)
      ..strokeWidth = strokeWidth
      //只绘制边框而不填充
      ..style = PaintingStyle.stroke;
    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant GradientBoundPainter oldDelegate) {
    return oldDelegate.colors != colors;
  }
}
