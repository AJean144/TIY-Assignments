require 'csv'
require 'sqlite3'

database = SQLite3::Database.open "nfl.db"

CSV.foreach('states.csv') do |row|
  next if row[0] == 'id'
  puts "#{row.join(', ')}"
  sql = "INSERT INTO states (id, name, abbr, capital, biggest_city, population, size) VALUES("
  data = row.map do |cell|
  	cell.to_i == 0 ? "'#{cell}'" : cell
  end
  puts "#{sql}#{data.join(', ')});"
  #database.execute "#{sql}#{row.map{|cell| cell.is_a?(String) ? "\"#{cell}\"" : cell}.join(', ')})"
end

database.close
