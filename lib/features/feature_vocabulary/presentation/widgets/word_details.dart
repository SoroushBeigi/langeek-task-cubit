import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:task/features/feature_vocabulary/presentation/cubit/word_cubit.dart';

class WordDetails extends StatefulWidget {
  final Word word;
  final int index;

  const WordDetails({required this.word, required this.index, super.key});

  @override
  State<WordDetails> createState() => _WordDetailsState();
}

class _WordDetailsState extends State<WordDetails> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil screenUtil = ScreenUtil();
    final textTheme = Theme.of(context).textTheme;
    final word = widget.word;
    return Column(
      children: [
        //Image Card
        Container(
          height: screenUtil.setHeight(207),
          width: screenUtil.setWidth(272),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[700]!.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child:
              Image.network(word.mainTranslation!.wordPhoto!.photo!.toString()),
        ),
        SizedBox(
          height: screenUtil.setHeight(20.7),
        ),
        Text(
          word.title!,
          style: textTheme.headlineLarge,
        ),
        SizedBox(
          height: screenUtil.setHeight(6.9),
        ),
        Text(
          word.mainTranslation!.pronunciation!,
          style: textTheme.displayLarge,
        ),
        SizedBox(
          height: screenUtil.setHeight(13.8),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Text(
            word.mainTranslation!.partOfSpeech!.partOfSpeechType!,
            style: textTheme.displayMedium,
          ),
        ),
        SizedBox(
          height: screenUtil.setHeight(13.8),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenUtil.setWidth(16)),
          child: Column(
            children: [
              Text(
                word.mainTranslation!.translation!,
                style: textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: screenUtil.setHeight(13.8)),
              if (word.mainTranslation!.synonyms!.isNotEmpty)
                Row(
                  children: <Widget>[
                        Text(
                          'Synonym:',
                          style: textTheme.bodyMedium,
                        )
                      ] +
                      word.mainTranslation!.synonyms!
                          .map<Widget>(
                            (e) => Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: screenUtil.setWidth(1)),
                              padding: EdgeInsets.all(screenUtil.setWidth(3)),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen[200]!.withOpacity(0.5),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                e.word!,
                                style: TextStyle(
                                    color: Colors.green[800],
                                    fontSize: screenUtil.setSp(16),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                          .toList()
                          .take(3)
                          .toList(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
