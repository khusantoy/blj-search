import 'dart:math';

class BljSearchBase {
  // Binary search algorithm. It requires the list to be sorted.
  static int binarySearch({required List data, required target}) {
    int leftIndex = 0;
    int rightIndex = data.length - 1;

    // Return -1 for empty list
    if (data.isEmpty) {
      return -1;
    }

    // If the target is outside the range of the list, return -1.
    if (target < data[leftIndex] || target > data[rightIndex]) {
      return -1;
    }

    // Loop until the left index is greater than the right index.
    while (leftIndex <= rightIndex) {
      int midIndex =
          (leftIndex + rightIndex) ~/ 2; // Calculate the mid-point index.

      // Check if the target is at the mid-point.
      if (target == data[midIndex]) {
        return midIndex;
      }
      // If the target is greater than the mid-point value, search in the right half.
      else if (target > data[midIndex]) {
        leftIndex = midIndex + 1;
      }
      // If the target is smaller, search in the left half.
      else {
        rightIndex = midIndex - 1;
      }
    }

    // Return -1 if the target is not found.
    return -1;
  }

  // Linear search algorithm. It works on both sorted and unsorted lists.
  static int linearSearch({required List data, required target}) {
    // Return -1 for empty list
    if (data.isEmpty) {
      return -1;
    }

    // Iterate through the list and check if the current element matches the target.
    for (var i = 0; i < data.length; i++) {
      if (data[i] == target) {
        return i; // Return the index if the target is found.
      }
    }

    // Return -1 if the target is not found.
    return -1;
  }

  // Jump search algorithm. It requires the list to be sorted.
  int jumpSearch(List a, int x) {
    int n = a.length;
    int step = sqrt(n).floor().toInt(); // Calculate the optimal step size.
    int prev = 0;

    // Return -1 for empty list
    if (a.isEmpty) {
      return -1;
    }

    // Find the block where the target might be present.
    while (a[min(step, n) - 1] < x) {
      prev = step;
      step += sqrt(n).floor().toInt();

      // If we've jumped past the end of the list, return -1.
      if (prev >= n) {
        return -1;
      }
    }

    // Perform a linear search within the block.
    while (a[prev] < x) {
      prev = prev + 1;

      // If we reach the next block or end of the list, return -1.
      if (prev == min(step, n)) {
        return -1;
      }
    }

    // If the element is found, return its index.
    if (a[prev] == x) {
      return prev;
    }

    // Return -1 if the target is not found.
    return -1;
  }
}
