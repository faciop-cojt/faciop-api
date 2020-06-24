5.times do
  Good.create({
  name: Faker::Book.title, shopid: rand(5),
  description: "aaa", data: "hello.com/1",
  price: [*10..1000].sample(1)[0], category: Faker::Cosmere.shard,
  link:'aaa.com', thumbnail: 'bbb.com'
  })
end
