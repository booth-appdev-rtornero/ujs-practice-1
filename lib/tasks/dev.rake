task sample_data: :environment do
  user = User.find_or_create_by(email: "alice@example.com") do |user|
    user.password = "password"
  end

  p user
  user.tasks.destroy_all

  Task.statuses.values.each do |status|
    rand(3..10).times do
      user.tasks.create(
        content: Faker::Hacker.say_something_smart,
        status: status
      )
      
    end
  end

end
