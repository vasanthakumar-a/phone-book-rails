Contact.destroy_all

contacts = []

20.times do |i|
  new_contact = {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      # phone_number: Faker::PhoneNumber.phone_number,
      phone_number: Faker::Number.number(digits: 10),
      email: Faker::Internet.email,
      company_name: Faker::Company.name,
      birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
      address: Faker::Address.full_address,
      image: nil
  }
  contacts.push(new_contact)
end

puts " ###### "
puts contacts

Contact.create(contacts)
