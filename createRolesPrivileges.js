use admin

db.dropRole( "ambienceRole", { w: "majority" })

db.createRole({
  role: 'ambienceRole',
  privileges: [
    {
      resource: { db: 'ambience', collection: '' },
      actions: ['collMod']
    }
  ],
  roles: [
    { role:"readWrite",db:"ambience"},
    { role:"readWrite",db:"ambience-logs"},
    { role:"readWrite",db:"ambience-temp"},
    { role:"readWrite",db:"eno"},
  ]
})

