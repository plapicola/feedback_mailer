# Feedback Mailer

This application is a microservice, which is part of the larger FeedbackLoop project. The project intends to alleviate the challenge of sourcing feedback between members of projects completed throughout the Turing School of Software and Design curriculum.

## Getting Started

### Using the Application

The application provides a series of endpoints for submission of emails.

##### POST /api/v1/new_survey

This endpoint is used to dispatch notification emails regarding new surveys being available for users.

Params: none

Request Body:

``` JSON
[
  {
    "email": "test@email.com",
    "user_name": "Survey User",
    "message_name": "A cool new survey!"
  },
  {
    "email": "user@domain.com",
    "user_name": "Another User",
    "message_name": "A cool new survey!"
  }
]
```

Sample Response:

``` JSON
{
  "success": "Your messages have been sent"
}
```

Sample Email:

```
Hello Survey User!

A new survey, A cool new survey!, is available for you to fill out.

Please visit FeedbackLoop (linked below) and sign in to fill out the survey.

If you encounter any issues, please reach out to @PeterIsOkay on slack for assistance.

Thank you.

The Turing FeedbackLoop Team

FeedbackLoop Site
```


##### POST /api/v1/welcome

This endpoint is responsible for dispatching welcome emails to new registrants in the application

Params: none

Request Body:

``` JSON
{
  "email": "test@email.com",
  "user_name": "Survey User",
  "message_name": "Welcome!"
}
```

Sample Response:

``` JSON
{
  "success": "Your message has been sent"
}
```

Sample Email:

```
Thanks for registering!

Hey Survey User!

Thanks for registering for the Turing Feedback app!

Feedback is an important practice here at Turing, and this platform aims to simplify the process of giving and receiving feedback for a group. By registering, you will receive notifications when staff or other group members add you to a survey. When you receive a notification, simply return to the site and log in using the credentials you just provided, and you'll be able to participate.

Please let us know if there's any questions or assistance we can provide. We look forward to your feedback.

Kind regards,

The Turing Feedback App Team
```

### Dependencies

The application requires the following dependencies prior to setup:

- Ruby
- Rails
- PostgreSQL

### Initial Setup:

``` bash
bundle install # Install Application Dependencies
rails db:create # Create database
rails db:migrate # Run migrations
```

Additionally, the application requires access to a SendGrid account for mail sending functionality. The token for which much be provided in a file at the path `./config/application.yml`.

The key should be provided in the following form within the file:

```
SENDGRID_API_KEY: YOUR_API_KEY_HERE
```

### Testing

To execute the test suite, run the command `bundle exec rspec`. Testing is handled through the RSpec library.

### Known Issues

- Sent emails are being stored in the database, but at present there is no endpoint to provide analytics or retrieve these records. This could be addressed in the future should the functionality for admins mandate it.

### Contributing

To contribute to this project, please fork and issue a pull request to the master branch with a note indicating changes made.

### Core Contributors

- @aprildagonese (Author)
- @plapicola (Author)

### Database Schema

![Database Schema](/schema.png)

### Tech Stack

This application was built using the following technologies:

- Ruby
- Rails
- RSpec
- PostgreSQL
- Heroku
