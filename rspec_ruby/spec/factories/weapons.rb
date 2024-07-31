FactoryBot.define do
  factory :weapon do
    name { FFaker::Name.name }
    description { FFaker::Lorem.paragraph(1) }
    power_base { 3000 }
    power_step { 100 }
    level { FFaker::Number.rand(1..99) }
  end
end
