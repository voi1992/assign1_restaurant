require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#breakfast

#lunch
#dinner
breakfast_url=["http://www.phoonghung.vn/resources/uploaded/PhoOngHung/product/2015/06/79/bo-kho-79-0-635707396637888750.png",
               "http://taichinhcuatoi.vn/images/ban-da-biet-an-my-goi-dung-cach-dcca.jpg",
               "http://7monngonmoingay.com/wp-content/uploads/2014/12/cach-nau-chao-trang-ma-van-ngon-khong-cuong-noi.jpg",
               "http://2monngonmoingay.net/wp-content/uploads/2014/12/cach-lam-banh-cuon.jpg",
               "http://sprinklesandsauce.com/wp-content/uploads/2014/08/Lemongrass-Pork-Banh-Mi.jpg"]

lunch_url = ["https://blog.kitfe.com/wp-content/uploads/2016/05/ddcb-22.jpg",
             "http://toinayangi.vn/wp-content/uploads/2014/09/mi-xao-thit-bo.jpg",
             "http://shipdoanhanoi.vn/uploads/2015/08/com-dui-ga-rang-gung.jpg",
             "https://i.ytimg.com/vi/u1guSV5jcMg/hqdefault.jpg",
              "https://i.ytimg.com/vi/U0EFa2bIqz4/hqdefault.jpg"
]
dinner_url = ["http://josepino.com/articles/kfc/snacker1.jpg",
             "https://www.kfc.com.au/media/82193/boxed_zingerbox.jpg",
             "http://www.thehindu.com/multimedia/dynamic/00157/05MP_KFC_Veg_Zinger_157836e.jpg",
             "https://www.kfc.com.au/media/72214/chicken_popcornchicken_large.jpg",
             "http://stuffpoint.com/kfc/image/75955-kfc-the-twister.jpg"
]

drink_url = ["http://assets.kraftfoods.com/recipe_images/opendeploy/154815_640x428.jpg",
              "http://www.cafecoffeeday.com/images/upload/our_cafe/big/ccd-cafe-latte.jpg",
              "hhttp://expressioncoffins.com.au/wp-content/uploads/2013/06/CAPPUCCINO-COFFEE.jpg",
              "http://i.imgur.com/Vvx45iW.jpg",
              "http://www.seriouseats.com/images/20090323-espresso.jpg"
]
5.times do |x|
  FoodItem.create!(
      name: %w(Pho My CHao BanhCuon BanhMi)[x],
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      section_id: 1,
      image_url: breakfast_url[x]
  )
end
5.times do |x|
  FoodItem.create!(
      name: %w(ComGa Myxaobo GaKho Echxao Baroichien)[x],
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      section_id: 2,
      image_url: lunch_url[x]
  )
end
5.times do |x|
  FoodItem.create!(
      name: %w(Snacker Jinger Veggie Popcorn Twister)[x],
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      section_id: 3,
  image_url: dinner_url[x]
  )
end
5.times do |x|
  FoodItem.create!(
      name: %w(Caramel Late Cappuccino Mocha Espresso)[x],
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      section_id: 4,
      image_url: drink_url[x]
  )
end