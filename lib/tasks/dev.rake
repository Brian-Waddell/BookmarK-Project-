unless Rails.env.production?
  namespace :dev do
    desc "Migrate, create, drop, and add sample data to the database"
    task reset: [
      :environment,
      "db:drop",
      "db:create",
      "db:migrate",
      "dev:sample_data"
    ]
  
    desc "Add sample data to development environment"
    task sample_data:
     [:environment, 
      "dev:add_users",
      "dev:add_books"] do
      puts " done adding sample data"
    end

    task add_users: :environment do
      puts "adding users"
      names = ["brian", "alice", "aldo", "sam", "alex"]
      names.each do |name|
        u = User.create(
          email: "#{name}@example.com",
          username: name,
          password: "Password1"
        )
        puts "added #{u.email}"
      end
      puts "done"
    end

    task :add_books => [:environment] do |t| 
      puts "adding books"
     
      num_books = rand(20..50)
      num_books.times do |i|
        b = Book.create(
          user: User.all.sample, 
          author: Faker::Book.author,
          title: Faker::Book.title
        )
      end 
      puts "Done adding books "
    end 

    task add_questions: :environment do 
      puts "adding questions"

      topic_questions = rand(20..50)
      topic_questions.times do |q| 
        q = Question.create(
          participant_id: User.all.sample.id,
          topic: Faker::Lorem.question, 
          body: Faker::Books::Dune.quote
        )
      end 
      puts "Finish with Questions"
    end
  end
end
