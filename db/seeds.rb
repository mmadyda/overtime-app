@user = User.create(email: "asdf@asdf.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Snow")

puts "1 User created"

@adminuser = AdminUser.create(email: "marekmadyda@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Marek", last_name: "Madyda")

puts "1 Admin User created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"