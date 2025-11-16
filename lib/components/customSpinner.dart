import 'dart:math';

import 'package:flutter/material.dart';

class CustomSpinner extends StatefulWidget {
  final double size;
  final Color dotColor;
  final String? text;

  const CustomSpinner({
    super.key,
    this.size = 60,
    this.dotColor = Colors.white,
    this.text,
  });

  @override
  State<CustomSpinner> createState() => _CustomSpinnerState();
}

class _CustomSpinnerState extends State<CustomSpinner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: widget.size,
          height: widget.size,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: _CircularDotsPainter(
                  progress: _controller.value,
                  dotColor: widget.dotColor,
                  dotCount: 8,
                ),
              );
            },
          ),
        ),
        if (widget.text != null) ...[
          const SizedBox(height: 16),
          Text(
            widget.text!,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.9),
              fontWeight: FontWeight.w400,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ],
    );
  }
}

class _CircularDotsPainter extends CustomPainter {
  final double progress;
  final Color dotColor;
  final int dotCount;

  _CircularDotsPainter({
    required this.progress,
    required this.dotColor,
    required this.dotCount,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;
    final dotRadius = size.width / 12;

    for (int i = 0; i < dotCount; i++) {
      final angle = (i / dotCount) * 2 * 3.14159;
      final dotProgress = (progress + (i / dotCount)) % 1.0;

      // Calculate dot position with slight orbit effect
      final currentRadius =
          radius * (0.9 + 0.1 * sin(dotProgress * 2 * 3.14159));
      final x = center.dx + currentRadius * cos(angle);
      final y = center.dy + currentRadius * sin(angle);

      // Calculate dot size and opacity based on progress
      final scale = 0.5 + 0.5 * sin(dotProgress * 2 * 3.14159);
      final currentDotRadius = dotRadius * scale;
      final opacity = 0.3 + 0.7 * scale;

      final paint = Paint()
        ..color = dotColor.withOpacity(opacity)
        ..style = PaintingStyle.fill;

      canvas.drawCircle(Offset(x, y), currentDotRadius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _CircularDotsPainter oldDelegate) {
    return progress != oldDelegate.progress ||
        dotColor != oldDelegate.dotColor ||
        dotCount != oldDelegate.dotCount;
  }
}
