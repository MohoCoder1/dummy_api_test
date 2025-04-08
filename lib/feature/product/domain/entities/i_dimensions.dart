abstract class IDimensions {
  final double width;
  final double height;
  final double depth;

  IDimensions({required this.width, required this.height, required this.depth});



  Map<String, dynamic>  toJson();



}
