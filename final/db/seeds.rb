

users = User.create(
  [
    { email: 'a@a.com', name: "tester", password: "a", password_confirmation: "a" },
    { email: 'b@b.com', name: "clickty clack", password: "b", password_confirmation: "b" },
    { email: 'c@c.com', name: "hunter", password: "c", password_confirmation: "c" }, 
    { email: 'z@z.com', name: "admin", password: "z", password_confirmation: "z", admin: true },
  ]
)

hunts = Hunt.create(
  [
    { start: DateTime.parse("5/11/2016") },
    { start: DateTime.parse("19/11/2016") },
    { start: DateTime.parse("26/11/2016") },
    { start: DateTime.parse("3/12/2016") },
    { start: DateTime.parse("31/12/2016") },
    { start: DateTime.parse("7/1/2017") },
    { start: DateTime.parse("21/1/2017") },
    { start: DateTime.parse("28/1/2017") },
  ]
)

resorts = Resort.create(
  [
    { start: DateTime.parse("6/1/2016") },
  ]
)
