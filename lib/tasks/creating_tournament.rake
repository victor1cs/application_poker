namespace :creating_tournament do
  desc "Creating tournaments"
  task create_tournaments: :environment do
    puts "Cleaning the database"
    Tournament.delete_all
    puts "Database cleaned successfully"

    puts "Creating the tournaments"
    50.times do
      Tournament.create(
        name: Faker::Name.name,
        buy_in: Faker::Number.decimal(l_digits: 2),
        award: Faker::Number.decimal(l_digits: 2),
        position: Faker::Number.between(from: 1, to: 70),
        quantity_players: Faker::Number.between(from: 70, to: 100),
        start_date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
        end_date: Faker::Date.between(from: 31.days.from_now, to: 60.days.from_now),
        link: Faker::Internet.url,
        online: Faker::Boolean.boolean,
        platform: Faker::Game.platform,
        user_id: User.all.sample.id
      )
    end
    puts "Tournaments created with Success!"
  end
end
