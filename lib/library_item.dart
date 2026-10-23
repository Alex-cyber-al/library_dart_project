abstract class LibraryItem {
  String title; // Назва книги чи журналу
  int year;     // Рік видання

  LibraryItem(this.title, this.year);

  //Інформація буде повертатись у вигляді тексту
  String describe();
}

class Book extends LibraryItem {
  String author; // Автор книги

  // Передача назви і року у батьківський клас
  Book(String title, int year, this.author) : super(title, year);

  @override
  String describe() {
    return "$title ($year) автор: $author";
  }
}

class Magazine extends LibraryItem {
  int issueNumber; // Номер журналу

  // Передача назви і року у батьківський клас
  Magazine(String title, int year, this.issueNumber) : super(title, year);

  @override
  String describe() {
    return "$title ($year), випуск №$issueNumber";
  }
}
