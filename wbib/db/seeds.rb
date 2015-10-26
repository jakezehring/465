topics = Topic.create(
  [
     { title: "Puppies", description: "Who doesn't love puppies?" },
     { title: "Cake", description: "Delicious" },
     { title: "chocolate", description: "Also cake" }
  ]
)

refrences = Reference.create(
  [
     { URL: "www.puppies.net", topic_id: topics[0].id },
     { URL: "www.toominiaussies.com", topic_id: topics[0].id },
     { URL: "www.iheartdogs.com", topic_id: topics[0].id },
     { URL: "www.puppiesmakemehappy.com", topic_id: topics[0].id },
     { URL: "dogtime.com/puppies",topic_id: topics[0].id },
     { URL: "www.cakes.com", topic_id: topics[1].id },
     { URL: "www.chocolate.com", topic_id: topics[2].id }

  ]
)
