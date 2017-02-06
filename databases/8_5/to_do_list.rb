# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("to_do.db")

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS to_do(
    id INTEGER PRIMARY KEY,
    activity VARCHAR(255),
    schedule VARCHAR(255)
  )
SQL

# create a table (if it's not there already)
db.execute(create_table_cmd)

# add a test 
# db.execute("INSERT INTO to_do (name, age) VALUES ( Jog, 2017-02-07 06:54:47 -0700 )")

# Time to NOT be lazy! ... ever ... ever ... again!
# add stuff to your day... possibly more than you can handle
def schedule_activity(db, activity, schedule)
  db.execute("INSERT INTO to_do (activity, schedule) VALUES (?, ?)", [activity, schedule])
end

1000.times do
  schedule_activity(db, "activity" ,Faker::Date.forward(14).to_s)
end
