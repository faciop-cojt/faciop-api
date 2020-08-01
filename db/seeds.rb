def rand_3
  rand(1..3).to_s
end
Good.create({
  name: 'Octpus HMD',
  shopid: rand_3,
  description: '最新のVR/AR対応ヘッドマウントディスプレイ！',
  data: 'https://faciop.s3.us-east-2.amazonaws.com/model/hmd.glb',
  price: '50000',
  category: 'メガネ',
  link: 'https://www.amazon.co.jp/',
  thumbnail: 'https://faciop.s3.us-east-2.amazonaws.com/img/glasses_hmd_rendering.png'
})
Good.create({
  name: '不織布マスク',
  shopid: rand_3,
  description: '薄いマスク',
  data: '',
  price: '100',
  category: 'マスク',
  link: 'https://www.amazon.co.jp/',
  thumbnail: 'https://1.bp.blogspot.com/-tEEP6DMBBm4/Xtt6eQsD1JI/AAAAAAABZQQ/-bIHUTVF7gU9g8zGtfZfIzWkPuh5kKc1ACNcBGAsYHQ/s1600/medical_mask_front_view.png'
})
Good.create({
  name: 'Cool hat',
  shopid: rand_3,
  description: 'クールな帽子',
  data: '',
  price: '3200',
  category: '帽子',
  link: 'https://www.amazon.co.jp/',
  thumbnail: 'https://1.bp.blogspot.com/-kpsPxxojlAo/UdEea15-maI/AAAAAAAAVvA/eg5vYG6Tvno/s601/fashion_mugiwaraboushi.png'
})
Good.create({
  name: 'Plain glasses',
  shopid: rand_3,
  description: '普通の眼鏡',
  data: '',
  price: '9000',
  category: 'メガネ',
  link: 'https://www.amazon.co.jp/',
  thumbnail: 'https://2.bp.blogspot.com/-lJilMIL82DA/UZ2VGO8EaSI/AAAAAAAATuY/V6CdH2oYAWI/s800/megane_black.png'
})
Good.create({
  name: 'Pink glasses',
  shopid: rand_3,
  description: 'カワイイ眼鏡❤',
  data: 'https://faciop.s3.us-east-2.amazonaws.com/model/glasses_formal_size_fixed_pink.glb',
  price: '18000',
  category: 'メガネ',
  link: 'https://www.amazon.co.jp/',
  thumbnail: 'https://faciop.s3.us-east-2.amazonaws.com/img/glasses_formal_pink_rendering.png'
})
Good.create({
  name: 'Formal glasses',
  shopid: rand_3,
  description: 'イかした黒縁の眼鏡',
  data: 'https://faciop.s3.us-east-2.amazonaws.com/model/glasses_formal_size_fixed.glb',
  price: '12000',
  category: 'メガネ',
  link: 'https://www.amazon.co.jp/',
  thumbnail: 'https://faciop.s3.us-east-2.amazonaws.com/img/glasses_formal.png'
})

['田中小物', 'Cosmetic Tanaka', '加藤物流'].each { |i|
Shop.create({
  name: i
})
}
