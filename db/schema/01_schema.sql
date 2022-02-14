-- Drop Tables if existant
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS maps CASCADE;
DROP TABLE IF EXISTS markers CASCADE;
DROP TABLE IF EXISTS users_maps CASCADE;

-- Recreate Tables
----------------------------------------

-- Recreate User Table
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  profile_picture_url VARCHAR(255) DEFAULT 'https://www.tenforums.com/geek/gars/images/2/types/thumb_15951118880user.png'
);

-- Recreate Maps Table
CREATE TABLE maps (
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255) NOT NULL,
  map_category VARCHAR(255),
  zoom INTEGER NOT NULL,
  map_center_latitude VARCHAR(255) NOT NULL,
  map_center_longitude VARCHAR(255) NOT NULL
);

-- Recreate Markers Table
CREATE TABLE markers (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  map_id INTEGER REFERENCES maps(id) ON DELETE CASCADE,

  title VARCHAR(255) NOT NULL,
  description TEXT,
  marker_category VARCHAR(255),
  image_url VARCHAR(255),

  marker_latitude VARCHAR(255) NOT NULL,
  marker_longitude VARCHAR(255) NOT NULL
);

-- Recreate Users_Maps Join Table
CREATE TABLE users_maps (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  map_id INTEGER REFERENCES maps(id) ON DELETE CASCADE
);
