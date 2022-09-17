import '../../../models/ssul_model.dart';

final sample_data = [
  SsulModel(contents: '재미있는내용', leftButtonText: '노잼', rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(contents: '재미없는내용', leftButtonText: 'yes', rightButtonText: 'no')
      .toMap(),
  SsulModel(contents: 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋ', leftButtonText: '잼', rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(
          contents: 'ㅁㅂㅈㅂㄷ검ㅇㄴ라ㅓㅗㅇㅁ나ㅓㅗㅇㄹ',
          leftButtonText: 'yes',
          rightButtonText: 'yes')
      .toMap(),
  SsulModel(
          contents: 'ㅁㅂㅈㅂㄷ검ㅇㄴ라ㅓㅗㅇㅁ나ㅓㅗㅇㄹ',
          leftButtonText: '노잼',
          rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(
          contents: 'ㅁqwerweqrwqrㅂㅈㅂㄷ검ㅇㄴ라ㅓㅗㅇㅁ나ㅓㅗㅇㄹ',
          leftButtonText: '노잼',
          rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(
          contents: 'asdf검ㅇㄴ라ㅓㅗㅇㅁ나ㅓㅗㅇㄹ',
          leftButtonText: '노잼',
          rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(
          contents: 'ㅁㅂㅈㅂㄷ검ㅇㄴsadgadsgas나ㅓㅗㅇㄹ',
          leftButtonText: '노잼',
          rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(
          contents: 'ㅁㅂㅈㅂasdfasdㅁ나ㅓㅗㅇㄹ',
          leftButtonText: '노잼',
          rightButtonText: '꿀잼')
      .toMap(),
  SsulModel(
          contents: 'ㅁㅂㅈㅂㄷ검ㅇasq12312adsfㅇㅁ나ㅓㅗㅇㄹ',
          leftButtonText: '노잼',
          rightButtonText: '꿀잼')
      .toMap(),
];
