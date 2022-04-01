WikiMap
=========

WikiMap is an app to create custom maps and share them with others. It was built with EJS, Express, PostgreSQL, and the Google Maps API.

## Features
- Create a profile page with a description and picture of yourself with all of your maps available to see
- Create maps with titles and descriptions, adding markers with their own titles, images, and descriptions
- Add maps to your favourite list, whether they were made by you or someone else
- Browse a list of many maps made public by other users

## Getting Started

1. Navigate to the app directory and install the dependencies with `npm i`.
2. Create a database with posgreSQL and register for a Google Maps API. Create a `.env` file formatted like the .env-example and insert the appropriate information.
3. Start the server with `npm start`
4. Visit `http://localhost:8080/`

## Screenshots

<ins>Profile Page:</ins>

<img src="https://github.com/jbenson4/Wiki_Map/blob/master/docs/wiki-maps-profile.png?raw=true"/>

<ins>Map Details Page:</ins>

<img src="https://github.com/jbenson4/Wiki_Map/blob/master/docs/wiki-maps-map-details.png?raw=true" />

<ins>Adding a Marker:</ins>

<img src="https://github.com/jbenson4/Wiki_Map/blob/master/docs/wiki-maps-adding-pins.png?raw=true" />

## Dependencies

- "chalk": "^2.4.2",
- "dotenv": "^2.0.0",
- "ejs": "^2.6.2",
- "express": "^4.17.1",
- "morgan": "^1.9.1",
- "pg": "^8.5.0",
- "sass": "^1.35.1"