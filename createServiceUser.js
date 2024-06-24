use admin

db.dropUser("ambienceUser")

db.createUser(
    { 
     user: "ambienceUser",
     pwd:  "elixir",
     roles:
     [
     { role:"ambienceRole",db:"admin"},
     ] } 
);