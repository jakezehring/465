topics = Topic.create(
  [
     { title: "Puppies", description: "Who doesn't love puppies?" },
     { title: "Cake", description: "Delicious" },
     { title: "chocolate", description: "Also cake" }
  ]
)

refrences = Reference.create(
  [
     { URL: "www.puppies.net", topic_id: topics[0].id }

  ]
)
