

users = User.create(
  [
    { email: 'a@a.com', name: "tester", password: "a", password_confirmation: "a" },
    { email: 'b@b.com', name: "clickty clack", password: "b", password_confirmation: "b" },
    { email: 'c@c.com', name: "hunter", password: "c", password_confirmation: "c" }, 
    { email: 'd@d.con', name: "dandy", password: "d", password_confirmation: "d" },
    { email: 'z@z.com', name: "admin", password: "z", password_confirmation: "z", admin: true },
  ]
)

hunts = Hunt.create(
  [
    { start: DateTime.parse("5/11/2016"), user_id: users[2].id, people: 4},
    { start: DateTime.parse("19/11/2016") },
    { start: DateTime.parse("26/11/2016"), user_id: users[3].id, people: 4, pheasent: true },
    { start: DateTime.parse("3/12/2016") },
    { start: DateTime.parse("31/12/2016") },
    { start: DateTime.parse("7/1/2017"), user_id: users[0].id, people:7, pheasent: true, dove: true },
    { start: DateTime.parse("21/1/2017") },
    { start: DateTime.parse("28/1/2017") },
  ]
)

resorts = Resort.create(
  [
    { start: DateTime.parse("1/6/2016"), user_id: users[2].id, end: DateTime.parse("4/6/2016"), people: 5 },
    { start: DateTime.parse("8/6/2016") },
    { start: DateTime.parse("20/6/2016") },
    { start: DateTime.parse("1/7/2016"), user_id: users[2].id, end: DateTime.parse("8/7/2016"), people: 7 },
    { start: DateTime.parse("20/7/2016") },
    { start: DateTime.parse("31/5/2017") },
    { start: DateTime.parse("10/6/2017"), user_id: users[3].id, end: DateTime.parse("12/6/2017"), people: 4 },
    { start: DateTime.parse("30/6/2017") },
  ]
)
