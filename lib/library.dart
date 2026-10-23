import 'library_item.dart';

class Library {
  // Список, де зберігаються всі додані книги та журнали
  List<LibraryItem> items = [];

  // Додавання нового елемента до списку
  void addItem(LibraryItem item) {
    items.add(item);
  }

  // Фільтрація списку за вказаним роком
  List<LibraryItem> findByYear(int year) {
    return items.where((item) {
      return item.year == year;
    }).toList();
  }

  // Збір текстових описів всіх елементів в один список рядків
  List<String> getAllDescriptions() {
    return items.map((item) {
      return item.describe();
    }).toList();
  }

  // Пошук найстарішого елемента через цикл
  LibraryItem? findOldest() {
    if (items.isEmpty) {
      return null; 
    }

    // Беремо за основу перший елемент зі списку
    LibraryItem oldest = items[0];
    
    // Перебір всього списку і порівняння років видання
    for (int i = 0; i < items.length; i++) {
      if (items[i].year < oldest.year) {
        oldest = items[i]; // якщо знайдено старіший рік, то перезаписуємо
      }
    }
    
    return oldest;
  }
}
