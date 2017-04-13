require 'sqlite3'

db = SQLite3::Database.new("spring2017anime.db")

create_table_one = <<-SQL
  CREATE TABLE IF NOT EXISTS shows(
    id INTEGER PRIMARY KEY,
    show VARCHAR(255),
    air_day VARCHAR(255),
    weekone_rate VARCHAR(255),
    weektwo_rate VARCHAR(255),
    weekthree_rate VARCHAR(255),
    weekfour_rate VARCHAR(255)
  )
SQL


db.execute(create_table_one)

def add_show(db, show, airdate, rate1, rate2, rate3, rate4)
  db.execute("INSERT INTO shows (show, air_day, weekone_rate, weektwo_rate, weekthree_rate, weekfour_rate) VALUES (?, ?, ?, ?, ?, ?)", [show, airdate, rate1, rate2, rate3, rate4])
end

def retrieve_cheat(db,show)
  result = db.execute("SELECT * FROM shows WHERE show = '#{show}' ")
  puts "This show: #{result}"
end

def update_rating1(db, show, rate1)
	db.execute("UPDATE shows SET weekone_rate = '#{rate1}' WHERE show = '#{show}'")
end

def update_rating2(db, show, rate2)
	db.execute("UPDATE shows SET weektwo_rate = '#{rate2}' WHERE show = '#{show}'")
end

def update_rating3(db, show, rate3)
	db.execute("UPDATE shows SET weekthree_rate = '#{rate3}' WHERE show = '#{show}'")
end

def update_rating4(db, show, rate4)
	db.execute("UPDATE shows SET weekfour_rate = '#{rate4}' WHERE show = '#{show}'")
end

loop do
puts "Do you want to add a show, retrieve a show, or update a rating?"
puts "When you are done, simply type done!"
decision = gets.chomp 
	if decision == "add"
		puts "What is the name of the show?"
		show = gets.chomp

		puts "What day does this show air?"
		airdate = gets.chomp

		puts "How was the first episode?"
		rate1 = gets.chomp

		puts "How was the second episode?"
		rate2 = gets.chomp

		puts "How was the third episode?"
		rate3 = gets.chomp

		puts "How was the fourth episode?"
		rate4 = gets.chomp

		add_show(db, show, airdate, rate1, rate2, rate3, rate4)

	elsif decision == "retrieve"
		puts "What show are you looking for?"
		show = gets.chomp
		retrieve_cheat(db,show)
	elsif decision == "update"
		puts "What show do you want to update?"
		show = gets.chomp
		puts "What week rating do you want to update?"
		week = gets.chomp
			if week == "one"
				puts "What do you want to update it to?"
				rate1 = gets.chomp
				update_rating1(db, show, rate1)
			elsif week == "two"
				puts "What do you want to update it to?"
				rate2 = gets.chomp
				update_rating2(db, show, rate2)
			elsif week == "three"
				puts "What do you want to update it to?"
				rate3 = gets.chomp
				update_rating3(db, show, rate3)
			elsif week == "four"
				puts "What do you want to update it to?"
				rate4 = gets.chomp
				update_rating4(db, show, rate4)
			end		
	elsif decision == "done"
		break
	end
end

		


