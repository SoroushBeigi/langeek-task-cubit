import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/feature_vocabulary/presentation/cubit/word_cubit.dart';
import 'package:task/features/feature_vocabulary/presentation/widgets/word_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../domain/entities/word.dart';

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
    final cubit = context.read<WordCubit>();
    controller =
        PageController(keepPage: false, initialPage: cubit.currentPage);
    cubit.loadWords();
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
    final cubit = context.read<WordCubit>();
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
                  initial: (index) => Container(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        err,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      ElevatedButton(
                          onPressed: () => cubit.loadWords(),
                          child: const Text('Retry'))
                    ],
                  ),

                  orElse: () => Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenUtil.setHeight(69),
                        ),
                        SmoothPageIndicator(
                            controller: controller,
                            count: cubit.words.length,
                            effect: SlideEffect(
                                dotHeight: screenUtil.setHeight(6.9),
                                spacing: 1,
                                dotColor: Colors.blueGrey[300]!),
                            onDotClicked: (index) {
                              //TODO: Implement
                              // BlocProvider.of<WordBloc>(context)
                              //     .add(ChangePageEvent(page: index));
                            }),
                        SizedBox(
                          height: screenUtil.setHeight(13.8),
                        ),
                        Expanded(
                          child: PageView.builder(
                            itemCount: cubit.words.length,
                            controller: controller,
                            itemBuilder: (context, index) => WordDetails(
                              word: cubit.words[index],
                              index: index,
                            ),
                          ),
                        ),
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
