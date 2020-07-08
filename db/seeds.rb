100.times do
  Good.create({
  name: Faker::Book.title,
  shopid: rand(5),
  description: Faker::Lorem.sentences,
  data: ["hello.com/1", ""][rand(2)],
  price: [*10..1000].sample(1)[0],
  category: ["メガネ", "帽子", "マスク"].sample(1)[0],
  link: Faker::Internet.domain_name,
  thumbnail: Faker::Omniauth.google[:info][:image]
  })
end
