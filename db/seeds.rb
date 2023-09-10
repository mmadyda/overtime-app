@user = User.create(email: "asdf@asdf.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf",
                    first_name: "John", 
                    last_name: "Snow",
                    phone:"1234567890")

puts "1 User created"

@adminuser = AdminUser.create(email: "marekmadyda@gmail.com", 
                                password: "123456", 
                                password_confirmation: "123456", 
                                first_name: "Marek", 
                                last_name: "Madyda",
                                phone:"1234567890")

puts "1 Admin User created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5 )
end
puts "100 Posts have been created"

100.times do |audit_log|
    AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 AuditLogs have been created"