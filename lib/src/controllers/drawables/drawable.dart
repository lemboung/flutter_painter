import 'dart:ui';

/// Abstract class to define a drawable object.
abstract class Drawable {
  /// Whether the drawable is hidden or not.
  final bool hidden;
  final int? number;
  final Offset? position;

  /// Default constructor.
  const Drawable({this.hidden = false, this.number, this.position});

  /// Draws the drawable on the provided [canvas] of size [size].
  void draw(Canvas canvas, Size size);

  bool get isHidden => hidden;

  bool get isNotHidden => !hidden;

  /// Checks equality between two [Drawable]s.
  // @override
  // bool operator ==(Object other) {
  //   return other is Drawable && other.hidden == hidden;
  // }
  //
  // @override
  // int get hashCode {
  //   return hidden.hashCode;
  // }
}
