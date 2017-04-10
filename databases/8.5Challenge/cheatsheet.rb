require 'sqlite3'

db = SQLite3::Database.new("cheatsheet.db")

create_table_one = <<-SQL
  CREATE TABLE IF NOT EXISTS language(
    id INTEGER PRIMARY KEY,
    language VARCHAR(255),
    site VARCHAR(255)
  )
SQL


db.execute(create_table_one)

def add_cheat(db, language, site)
  db.execute("INSERT INTO language (language, site) VALUES (?, ?)", [language, site])
end

def retrieve_cheat(db,language)
  result = db.execute("SELECT site FROM language WHERE language = '#{language}' ")
  puts "The site is: #{result}"
end

loop do
puts "Do you want to add a cheat sheet or retrieve a link?"
puts "When you are done, simply type done!"
decision = gets.chomp 
	if decision == "add"
		puts "What language is this cheat sheet for?"
		language = gets.chomp

		puts "What is the url or link?"
		site = gets.chomp

		add_cheat(db, language, site)
	elsif decision == "retrieve"
		puts "What language are you looking for?"
		language = gets.chomp
		retrieve_cheat(db, language)
	elsif decision == "done"
		break
	end
end

		


