accounts = ['savings', 'checkings']

3.times do
  user = User.create do |u|
    u.name = Faker::Name.unique.name
    u.email = Faker::Internet.email
    u.password = 'password'
  end
end

User.all.each do |u|
  accounts.each do |account|
    Account.create(
      name: account,
      amount: Faker::Number.decimal(l_digits: 4, r_digits: 2).to_s,
      status: 'open',
      user: u
    )
  end
end