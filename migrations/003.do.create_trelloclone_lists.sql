CREATE TABLE trelloclone_lists (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  list_title TEXT NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  user_id INTEGER
    REFERENCES trelloclone_users(id) ON DELETE CASCADE NOT NULL,
  board_id INTEGER
    REFERENCES trelloclone_boards(id) ON DELETE CASCADE NOT NULL
);