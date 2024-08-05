# BljSearch

The `BljSearch` package provides a collection of search algorithms implemented in Dart. It includes binary search, linear search, and jump search algorithms for finding elements in lists. This package is useful for developers who need efficient searching mechanisms in their Dart or Flutter applications.

## Features

- **Binary Search**: Efficiently finds an element in a sorted list with a time complexity of O(log n).
- **Linear Search**: Finds an element by scanning each element in the list with a time complexity of O(n).
- **Jump Search**: Combines elements of linear search and binary search to achieve better performance on sorted lists with a time complexity of O(√n).

## Getting Started

To use the `BljSearch` package in your Dart or Flutter project, follow these steps:

1. **Add the dependency**: Include `blj_search` in your `pubspec.yaml` file.

 ```
    dependencies:
      blj_search: ^1.0.0
``` 
2. **Import the package**: Add the import statement in your Dart file.

 ```
    import 'package:blj_search/blj_search_base.dart';
``` 
## Usage

Here are examples of how to use each search algorithm provided by the `BljSearch` class:

### Binary Search

```
import 'package:blj_search/blj_search_base.dart';

void main() {
  List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  int target = 7;

  int index = BljSearch.binarySearch(data: sortedList, target: target);
  print('Binary Search: Element found at index: $index');
}
```     

### Linear Search

```
import 'package:blj_search/blj_search_base.dart';

void main() {
  List<int> list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  int target = 7;

  int index = BljSearch.linearSearch(data: list, target: target);
  print('Linear Search: Element found at index: $index');
}
``` 

### Jump Search

```
import 'package:blj_search/blj_search_base.dart';

void main() {
  List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  int target = 7;
  BljSearch search = BljSearch();

  int index = search.jumpSearch(sortedList, target);
  print('Jump Search: Element found at index: $index');
}
```

## Additional Information

-   **Contributing**: Contributions are welcome! Please check the [contributing guidelines](CONTRIBUTING.md) for more information on how to contribute to this project.
-   **Issues**: If you encounter any issues or have feature requests, please [open an issue](https://github.com/khusantoy/blj-search/issues) on GitHub.
-   **Contact**: For any questions or suggestions, you can reach out to the maintainers through the [contact page](https://github.com/khusantoy/blj-search#contact).

Thank you for using `BljSearch`!
