# Dart JSON Parsing Bug: Index Out of Bounds Exception

This repository demonstrates a common error in Dart when parsing JSON data: an `IndexOutOfRangeException` that occurs when accessing an element of a JSON array without checking whether the array is empty.

The `bug.dart` file contains code that attempts to access the first element (`jsonData[0]`) of a JSON array.  If the array is empty, this will throw an exception.  The `bugSolution.dart` file shows a corrected version that handles this potential scenario.

## How to Reproduce

1. Clone the repository.
2. Run `bug.dart`.  You will likely encounter an error if the API returns an empty array.
3. Run `bugSolution.dart`.  This version handles the empty array case gracefully.

## Solution

Always check for null or empty values before accessing elements in an array.  See `bugSolution.dart` for an example of this best practice.
