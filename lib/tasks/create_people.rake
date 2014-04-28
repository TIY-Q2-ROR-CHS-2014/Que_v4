task create_people: :environment do
  100.times do |people|
    Que.create( {name: "#{Faker::Name.first_name} #{Faker::Name.last_name}" } )
  end
end