import 'package:library_dart_project/library.dart';
import 'package:library_dart_project/library_item.dart';

void main() {
  Library myLibrary = Library();
  
  // Додавання книг та журналів
  myLibrary.addItem(Book('Dart у дії', 2022, 'І. Петренко'));
  myLibrary.addItem(Magazine('Mobile Dev', 2023, 5));
  myLibrary.addItem(Book('Стара Книга', 1995, 'Невідомий'));

  print('--- Перевірка роботи програми ---');

  // 1. Пошук елементів за конкретним роком
  List<LibraryItem> res2022 = myLibrary.findByYear(2022);
  print('Знайдено за 2022 рік: ${res2022.length} шт.');

  // 2. dart Виведення списку усіх описів на екран
  List<String> list = myLibrary.getAllDescriptions();
  print('\nВсі елементи в базі:');
  for (int i = 0; i < list.length; i++) {
    print('- ${list[i]}');
  }

  // 3. Виведення найстарішого елемента, якщо він є
  LibraryItem? oldItem = myLibrary.findOldest();
  if (oldItem != null) {
    print('\nНайстаріша книга чи журнал: ${oldItem.describe()}');
  }
}
