# System Tests

## Purpose
System tests are used to test the application as a whole, from a user's 
perspective. They simulate real user interactions in a browser environment, 
ensuring that the entire application, including its interface, works as expected.

## What to Test
- User interactions with the application via a web browser.
- End-to-end functionality (e.g., signing up, searching, adding items to a cart).
- JavaScript functionality and AJAX calls.
- Visual aspects and layouts (to an extent).

## What Not to Test
- Internal application logic or database interactions (better covered in unit or integration tests).
- Performance testing (handled separately).
- Lower-level components (e.g., individual model or controller behaviors).