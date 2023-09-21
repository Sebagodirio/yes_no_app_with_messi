import 'package:yes_no_app/domain/entity/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
      answer: json['answer'], forced: json['forced'], image: json['image']);

  Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'si' : 'no',
      fromWho: FromWho.hers,
      imageUrl: image);
}