== README

### Technologies Used
* Ruby 2.3.1p112 (2016-04-26 revision 54768)
* Rails 4.2.7.1
* PostgreSQL 9.6.0

### Ruby Gems and plugins used:
* simple_form
* bootstrap-sass
* devise
* paperclip
* pry-rails
* annotate
* jQuery Raty - A Star Rating Plugin

# App goal:

A clone hybrid between Yelp and Instagram. Making use of Instagram's layout simplicity and Yelp's useful restaurant search, filtering and reviewing system.

# Demo:

Sign up

Sign in

Add restaurants

Edit restaurants

Delete restaurants

Add reviews

Edit reviews

Delete reviews

Use dropdown menu

Use search bar

Sign out

# Routes:

Made use of nested routes for the relationship between restaurant which 'has_many :reviews' and a review which 'belongs_to :restaurant'. Nested routes allowed restaurants to display their own unique reviews.

## Schema:

Restaurants table

Users table

Reviews table

Types table

Cuisines table (However, decided to delete it and include it after the core app is completed)

## Models:

A restaurant belongs to a user and a type and has many reviews

A user has many restaurants and reviews

A review belongs to a user and a restaurant

A type has many restaurants

## Sore bits:

Working with Gems. Going through the documentation for each of them can be quite time consuming and confusing. Skimming through the options, choosing what you need  and applying it with your own code can be challenging.

## Cool beans:

Even though working with Ruby Gems was tedious, I enjoyed how useful they can be in adding extra features to the website without going through too much trouble figuring out how to do something from scratch. Also, getting the chance to use a jQuery plugin that made the user reviewing experience more fun.

## Experience/lessons

This project helped me better understand the core steps involved in setting up a website from scratch and getting it to work and hosted online.

While going through the project I had the chance to practice and polish my front-end skills. It also allowed me to better understand how the back-end functions and the important relationships involved between Models, Views and Controllers.

During this time I was also impressed at how collaborative the web development community is with the numerous Gems and plugins available online.

## Where next:

Allow non-members to add reviews

Only allow certain members (admins) to add restaurants

Set up an internal messaging service. Allowing members to send each other messages.

Set up a 'View Account' allowing users to manage their account settings such as editing and deleting their info.
