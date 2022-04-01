Wiki Maps
=========

## Features
- Wiki Maps is a app where you can add markers to maps and save/share them with others.

## Getting Started

1. Navigate to the app directory and install the dependencies with `npm i`.
2. Create a database with posgreSQL and register for a Google Maps API. Create a `.env` file formatted like the .env-example and insert the appropriate information.
3. Start the server with `npm start`
4. Visit `http://localhost:8080/`

## Screenshots

<ins>Profile Page</ins>

<img src="https://github.com/jbenson4/Wiki_Map/blob/master/docs/wiki-maps-profile.png?raw=true"/>

<ins>Map Details Page</ins>

<img src="https://github.com/jbenson4/Wiki_Map/blob/master/docs/wiki-maps-map-details.png?raw=true" />

<ins>Adding a Marker</ins>

<img src="https://github.com/jbenson4/Wiki_Map/blob/master/docs/wiki-maps-adding-pins.png?raw=true" />

## Dependencies

- "chalk": "^2.4.2",
- "dotenv": "^2.0.0",
- "ejs": "^2.6.2",
- "express": "^4.17.1",
- "morgan": "^1.9.1",
- "pg": "^8.5.0",
- "sass": "^1.35.1"