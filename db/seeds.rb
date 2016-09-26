require 'ffaker'

30.times do
  Contact.create(name: FFaker::Name.name, number: FFaker::PhoneNumber.short_phone_number)
end
