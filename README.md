# Unhandled Exception in Dart Asynchronous Network Request

This repository demonstrates a common error in Dart asynchronous programming: failing to handle exceptions properly during network requests. The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version with robust error handling.

## Problem
The original code lacked a comprehensive `catch` block to handle potential exceptions (like network timeouts or server errors) during an HTTP request. This could lead to app crashes or unexpected behavior when network connectivity was unavailable or the server responded with an error.

## Solution
The solution involves enhancing the `catch` block to gracefully handle errors. The improved code explicitly prints error messages and, importantly, uses `rethrow` to propagate the exception up the call stack if necessary, allowing higher-level error handling mechanisms to take action.  This ensures that errors are not silently ignored.