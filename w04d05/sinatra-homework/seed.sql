DROP TABLE IF EXISTS video;

CREATE TABLE video (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  url VARCHAR(255)

);

INSERT INTO video (title , description, url) VALUES ('Video 1' , 'Description text 1' , 'url/lorem.ipsum');
INSERT INTO video (title , description, url) VALUES ('Video 2' , 'Description text 2' , 'url/lorem.ipsum');
INSERT INTO video (title , description, url) VALUES ('Video 3' , 'Description text 3' , 'url/lorem.ipsum');
INSERT INTO video (title , description, url) VALUES ('video 4' , 'Description text 4' , 'url/lorem.ipsum');