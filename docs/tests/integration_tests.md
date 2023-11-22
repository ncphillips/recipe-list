# Integration Tests
## Purpose
Integration tests verify that different parts of the application work 
together as expected. They are used to test the flow of an application 
from the point of a user interacting with it, but they don't use a 
browser-based approach like system tests.

## What to Test
- Workflows involving multiple controllers and actions.
- User journeys through multiple pages.
- Data persistence and manipulation across different parts of the application.
- API interactions and external services integration.
- Authentication and authorization flows.

## What Not to Test
- Low-level details of individual controllers or views.
- Components that don't interact with each other (test these in unit tests).
- Visual rendering of pages (use system tests for this).