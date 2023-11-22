# Controller Tests

## Purpose
Controller tests are used to test the actions of your controllers in isolation. They focus on the behavior of a single controller, ensuring that it processes requests and returns the expected responses.

## What to Test:
- Response status codes (e.g., 200 OK, 404 Not Found).
- Rendering the correct views.
- Assigning the right instance variables for use in views.
- Redirections after actions (e.g., after a create or update).
- Session or flash messages if they are set by the controller.

## What Not to Test:
- End-to-end workflows (leave this to integration/system tests).
- Model behavior or business logic (should be tested in model tests).
- The view’s HTML structure or CSS.