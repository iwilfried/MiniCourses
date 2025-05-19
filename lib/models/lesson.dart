class Lesson {
  final String title;         // Titel der Lektion
  final String description;   // Kurze Beschreibung
  final List<LessonPage> pages; // Seiten der Lektion
  final int durationInMinutes;
  final bool isCompleted;

  Lesson({
    required this.title,
    required this.description,
    required this.pages,
    required this.durationInMinutes,
    this.isCompleted = false,
  });
}

class LessonPage {
  final String title;    // Titel der Seite
  final String content;  // Hauptinhalt
  final String? image;   // Optionales Bild
  final List<String>? bulletPoints; // Optionale Aufzählungspunkte

  LessonPage({
    required this.title,
    required this.content,
    this.image,
    this.bulletPoints,
  });
}
