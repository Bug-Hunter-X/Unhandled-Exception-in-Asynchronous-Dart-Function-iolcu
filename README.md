# Unhandled Exception in Asynchronous Dart Function

This example demonstrates a common issue in Dart:  failure to handle exceptions that occur within asynchronous operations.  Specifically, exceptions thrown by `http.get` (or other asynchronous functions) might not be caught if the exception happens outside of the explicitly defined `try` block.

**The Problem:**
The `fetchData` function uses `await` with `http.get`. If the network request fails due to reasons outside the `try` block (e.g., a timeout), the exception is unhandled, leading to an application crash. The `catch` statement only catches exceptions thrown *inside* the `try` block. 

**The Solution:** Improved exception handling to address potential exceptions occurring at different points in the asynchronous flow.