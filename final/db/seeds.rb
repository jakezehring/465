

users = User.create(
  [
    { email: 'a@a.com', name: "tester", password: "a", password_confirmation: "a"},
    { email: 'z@z.com', name: "admin", password: "z", password_confirmation: "z", admin: true},
  ]
)
