require "csv"

CSV.foreach("data/recipes.csv", headers: :first_row, header_converters: :symbol) do |row|
  puts row
end
