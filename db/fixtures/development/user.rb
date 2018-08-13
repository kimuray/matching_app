def users_array(size: 10)
  users = []
  size.times do |i|
    users << { 
      id: i + 1,
      name: Faker::FunnyName.name,
      password: 'password',
      age: Faker::Number.between(20, 50),
      address: Faker::Number.between(1, 47),
      sex: Faker::Number.between(0, 1),
      height: Faker::Number.between(140, 200),
      weight: Faker::Number.between(40, 100),
      self_introduction: Faker::Community.quotes
    }
  end
  users
end

User.seed(
  :id,
  users_array(size: 50)
)
