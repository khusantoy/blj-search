import 'package:blj_search/src/blj_search_base.dart';

void main() {
  // Example sorted list of integers
  List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

  // Example target value to search for
  int target = 7;

  // Binary Search Example
  print('Binary Search:');
  int binarySearchResult = BljSearchBase.binarySearch(data: sortedList, target: target);
  if (binarySearchResult != -1) {
    print('Element found at index: $binarySearchResult');
  } else {
    print('Element not found');
  }

  // Linear Search Example
  print('\nLinear Search:');
  int linearSearchResult = BljSearchBase.linearSearch(data: sortedList, target: target);
  if (linearSearchResult != -1) {
    print('Element found at index: $linearSearchResult');
  } else {
    print('Element not found');
  }

  // Jump Search Example
  print('\nJump Search:');
  BljSearchBase search = BljSearchBase();
  int jumpSearchResult = search.jumpSearch(sortedList, target);
  if (jumpSearchResult != -1) {
    print('Element found at index: $jumpSearchResult');
  } else {
    print('Element not found');
  }

  // Example with a target not in the list
  print('\nExample with target not in the list:');
  int missingTarget = 4;
  print('Binary Search result: ${BljSearchBase.binarySearch(data: sortedList, target: missingTarget)}');
  print('Linear Search result: ${BljSearchBase.linearSearch(data: sortedList, target: missingTarget)}');
  print('Jump Search result: ${search.jumpSearch(sortedList, missingTarget)}');

  // Example with an empty list
  print('\nExample with an empty list:');
  List<int> emptyList = [];
  print('Binary Search result: ${BljSearchBase.binarySearch(data: emptyList, target: target)}');
  print('Linear Search result: ${BljSearchBase.linearSearch(data: emptyList, target: target)}');
  print('Jump Search result: ${search.jumpSearch(emptyList, target)}');
}
