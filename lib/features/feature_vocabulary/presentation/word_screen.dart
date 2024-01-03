import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/feature_vocabulary/presentation/cubit/word_cubit.dart';
import 'package:task/features/feature_vocabulary/presentation/widgets/finished_page.dart';
import 'package:task/features/feature_vocabulary/presentation/widgets/word_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({super.key, required this.title});

  final String title;

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  late PageController controller;

  @override
  void initState() {
    final wordCubit = context.read<WordCubit>();
    controller =
        PageController(keepPage: false, initialPage: wordCubit.currentPage);
    wordCubit.loadWords();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil screenUtil = ScreenUtil();
    final wordCubit = context.read<WordCubit>();
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: screenUtil.setHeight(207),
            child: AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(widget.title,
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
          ),
          SafeArea(
            child: BlocBuilder<WordCubit, WordState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          err,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red),
                        ),
                        ElevatedButton(
                            onPressed: () => wordCubit.loadWords(),
                            child: const Text('Retry'))
                      ],
                    ),
                  ),
                  finished: () =>
                      FinishedPage(onPressed: () => wordCubit.repeat()),
                  orElse: () => Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenUtil.setHeight(69),
                        ),
                        SmoothPageIndicator(
                            controller: controller,
                            count: wordCubit.words.length,
                            effect: SlideEffect(
                                dotHeight: screenUtil.setHeight(6.9),
                                spacing: 1,
                                dotColor: Colors.blueGrey[300]!),
                            onDotClicked: (index) {}),
                        SizedBox(
                          height: screenUtil.setHeight(13.8),
                        ),
                        Expanded(
                          child: PageView.builder(
                            itemCount: wordCubit.words.length,
                            controller: controller,
                            itemBuilder: (context, index) => WordDetails(
                              word: wordCubit.words[index],
                              index: index,
                            ),
                            onPageChanged: (page) {
                              if (page > wordCubit.currentPage) {
                                wordCubit.goToNextPage(true);
                              } else {
                                wordCubit.goToPreviousPage(true);
                              }
                            },
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: wordCubit.isFirstPage
                                      ? null
                                      : () => controller.animateToPage(
                                          controller.page!.floor() - 1,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut),
                                  child: const Text('Previous Word')),
                              ElevatedButton(
                                  onPressed: () {
                                    if (wordCubit.isLastPage) {
                                      wordCubit.finish();
                                    } else {
                                      controller.animateToPage(
                                          controller.page!.floor() + 1,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut);
                                    }
                                  },
                                  child: wordCubit.isLastPage
                                      ? const Text('Finish')
                                      : const Text('Next Word')),
                            ]),
                        SizedBox(
                          height: screenUtil.setHeight(15),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
