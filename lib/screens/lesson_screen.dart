import 'package:flutter/material.dart';
import '../models/lesson.dart';

class LessonScreen extends StatefulWidget {
  final Lesson lesson;

  const LessonScreen({
    super.key,
    required this.lesson,
  });

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                '${_currentPage + 1}/${widget.lesson.pages.length}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
              },
              itemCount: widget.lesson.pages.length,
              itemBuilder: (context, index) {
                final page = widget.lesson.pages[index];
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        page.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      if (page.image != null)
                        Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Image.asset(page.image!),
                        ),
                      Text(
                        page.content,
                        style: const TextStyle(fontSize: 16),
                      ),
                      if (page.bulletPoints != null) ...[
                        const SizedBox(height: 16),
                        ...page.bulletPoints!.map((point) => Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('• ', style: TextStyle(fontSize: 16)),
                                  Expanded(
                                    child: Text(point, style: const TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ],
                  ),
                );
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentPage > 0)
                    ElevatedButton(
                      onPressed: () {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text('Zurück'),
                    )
                  else
                    const SizedBox(width: 80),
                  if (_currentPage < widget.lesson.pages.length - 1)
                    ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text('Weiter'),
                    )
                  else
                    ElevatedButton(
                      onPressed: () {
                        // Hier können Sie die Lektion als abgeschlossen markieren
                        Navigator.pop(context);
                      },
                      child: const Text('Fertig'),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
