import 'package:flutter/material.dart';

class CustomAnimatedButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final Border? border;
  final List<BoxShadow>? boxShadow;
  final double? height;
  final Offset? offset;
  final EdgeInsetsGeometry? padding;
  final Icon? icon;

  const CustomAnimatedButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.backgroundColor,
      this.textStyle,
      this.borderRadius,
      this.border,
      this.height,
      this.boxShadow,
      this.padding,
      this.icon,
      this.offset})
      : super(key: key);

  @override
  _CustomAnimatedButtonState createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onTap();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: widget.height ?? 60,
        transform: Matrix4.translationValues(
            _isPressed ? 10 : 0, _isPressed ? 10 : 0, 0),
        decoration: BoxDecoration(
          color:
              widget.backgroundColor ?? const Color.fromARGB(255, 74, 195, 147),
          borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
          border: _isPressed
              ? null
              : (widget.border ?? Border.all(color: Colors.white, width: 3)),
          boxShadow: _isPressed
              ? []
              : (widget.boxShadow ??
                  [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.8),
                      spreadRadius: 1,
                      blurRadius: 0,
                      offset: widget.offset ?? const Offset(11, 11),
                    ),
                  ]),
        ),
        child: Center(
          child: Padding(
            padding:
                widget.padding ?? const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                widget.icon ?? const SizedBox(),
                if (widget.icon != null)
                  const SizedBox(
                    width: 10,
                  ),
                if (widget.icon != null)
                  Expanded(
                    child: Text(
                      widget.text,
                      style: widget.textStyle ??
                          const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                if (widget.icon == null)
                  Text(
                    widget.text,
                    style: widget.textStyle ??
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
