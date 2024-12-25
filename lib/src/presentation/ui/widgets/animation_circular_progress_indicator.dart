import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class AnimationCircularProgressIndicator extends StatefulWidget {
  final double value;

  const AnimationCircularProgressIndicator({super.key, required this.value});

  @override
  State<AnimationCircularProgressIndicator> createState() =>
      _AnimationCircularProgressIndicatorState();
}

class _AnimationCircularProgressIndicatorState
    extends State<AnimationCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
      child: AnimatedGradientCircularProgressIndicator(
        radius: 20,
        value: widget.value == 0 ? 0.01:widget.value,
        gradientColors:  [
          context.colorScheme.surface,
          context.colorScheme.surface,
        ],
        strokeWidth: 4.0,
      ),
    );
  }
}

class AnimatedGradientCircularProgressIndicator extends StatefulWidget {
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;
  final double value;
  final Duration duration;

  const AnimatedGradientCircularProgressIndicator({
    super.key,
    required this.radius,
    required this.gradientColors,
    required this.value,
    this.strokeWidth = 10.0,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  State<AnimatedGradientCircularProgressIndicator> createState() =>
      _AnimatedGradientCircularProgressIndicatorState();
}

class _AnimatedGradientCircularProgressIndicatorState
    extends State<AnimatedGradientCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _oldValue = 0.0;

  @override
  void initState() {
    super.initState();
    _oldValue = widget.value;
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = Tween<double>(
      begin: _oldValue,
      end: widget.value,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
  }

  @override
  void didUpdateWidget(AnimatedGradientCircularProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _oldValue = _animation.value;
      _animation = Tween<double>(
        begin: _oldValue,
        end: widget.value,
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ));
      _animationController.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          size: Size.fromRadius(widget.radius),
          painter: GradientCircularProgressPainter(
            radius: widget.radius,
            gradientColors: widget.gradientColors,
            strokeWidth: widget.strokeWidth,
            value: _animation.value,
            backgroundColor: Colors.white.withOpacity(0.6),
          ),
        );
      },
    );
  }
}

class GradientCircularProgressPainter extends CustomPainter {
  GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
    required this.value,
    required this.backgroundColor,
  });

  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;
  final double value;
  final Color? backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    double offset = strokeWidth / 2;
    Rect rect = Offset(offset, offset) &
        Size(size.width - strokeWidth, size.height - strokeWidth);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    var paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..color = backgroundColor ?? const Color(0xffF3F3F3)
      ..strokeWidth = strokeWidth;
    paint.shader = SweepGradient(
            colors: gradientColors, startAngle: 0.0, endAngle: 2 * pi * value)
        .createShader(rect);
    canvas.drawArc(rect, 0.0, 2 * pi, false, paint2);
    canvas.drawArc(rect, 0.0, 2 * pi * value, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
