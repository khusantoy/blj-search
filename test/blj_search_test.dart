import 'package:blj_search/src/blj_search_base.dart';
import 'package:test/test.dart';

void main() {
  // Grouping the tests under 'BljSearchBase' to organize them by the class being tested.
  group('BljSearchBase', () {
    // A sample sorted list to be used in the tests.
    List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

    // Test for the binarySearch method.
    test('binarySearch returns correct index', () {
      // Verifying that the binarySearch method returns the correct index for different targets.
      expect(
          BljSearchBase.binarySearch(data: sortedList, target: 7), equals(3));
      expect(
          BljSearchBase.binarySearch(data: sortedList, target: 1), equals(0));
      expect(
          BljSearchBase.binarySearch(data: sortedList, target: 19), equals(9));
      // Verifying that binarySearch returns -1 when the target is not in the list.
      expect(
          BljSearchBase.binarySearch(data: sortedList, target: 2), equals(-1));
    });

    // Test for the linearSearch method.
    test('linearSearch returns correct index', () {
      // Verifying that the linearSearch method returns the correct index for different targets.
      expect(
          BljSearchBase.linearSearch(data: sortedList, target: 7), equals(3));
      expect(
          BljSearchBase.linearSearch(data: sortedList, target: 1), equals(0));
      expect(
          BljSearchBase.linearSearch(data: sortedList, target: 19), equals(9));
      // Verifying that linearSearch returns -1 when the target is not in the list.
      expect(
          BljSearchBase.linearSearch(data: sortedList, target: 2), equals(-1));
    });

    // Test for the jumpSearch method.
    test('jumpSearch returns correct index', () {
      BljSearchBase search = BljSearchBase();
      // Verifying that the jumpSearch method returns the correct index for different targets.
      expect(search.jumpSearch(sortedList, 7), equals(3));
      expect(search.jumpSearch(sortedList, 1), equals(0));
      expect(search.jumpSearch(sortedList, 19), equals(9));
      // Verifying that jumpSearch returns -1 when the target is not in the list.
      expect(search.jumpSearch(sortedList, 2), equals(-1));
    });

    // Test to ensure that all search methods return -1 for an empty list.
    test('search methods return -1 for empty list', () {
      List<int> emptyList = [];

      expect(
          BljSearchBase.binarySearch(data: emptyList, target: 7), equals(-1));
      expect(
          BljSearchBase.linearSearch(data: emptyList, target: 7), equals(-1));
      expect(BljSearchBase().jumpSearch(emptyList, 7), equals(-1));
    });

    // Test to ensure that all search methods return -1 for targets outside the range of the list.
    test('search methods return -1 for out-of-range values', () {
      // Testing with values smaller and larger than any in the sorted list.
      expect(
          BljSearchBase.binarySearch(data: sortedList, target: -1), equals(-1));
      expect(
          BljSearchBase.binarySearch(data: sortedList, target: 20), equals(-1));
      expect(
          BljSearchBase.linearSearch(data: sortedList, target: -1), equals(-1));
      expect(
          BljSearchBase.linearSearch(data: sortedList, target: 20), equals(-1));
      expect(BljSearchBase().jumpSearch(sortedList, -1), equals(-1));
      expect(BljSearchBase().jumpSearch(sortedList, 20), equals(-1));
    });
  });
}
