class SsulModel {
  String contents;
  String leftButtonText;
  String rightButtonText;

  SsulModel(
      {required this.contents,
      required this.leftButtonText,
      required this.rightButtonText});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map['contents'] = contents;
    map['leftButtonText'] = leftButtonText;
    map['rightButtonText'] = rightButtonText;
    return map;
  }
}
