# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Contact.destroy_all
20.times do |i|
  Contact.create(id: i,
      first_name: "Vasanthakumar",
      last_name: "A",
      phone_number: 9514955240,
      email: "vasanthakumar@sedintechnologies.com",
      company_name: "sedin",
      birth_date: "2002-02-19",
      address: "Vellalore, Coimbatore",
      photo: nil
    )
end
