require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"
new_filepath = "data/new_band.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   puts "#{row["First Name"]} #{row["Last Name"]} plays #{row["Instrument"]}"
# end

players = [
  {
    name: "Ronaldo",
    country: "Brazil",
    age: "45"
  },
  {
    name: "Roberto Carlos",
    country: "Brazil",
    age: "50"
  }
]

CSV.open(new_filepath, "wb", force_quotes: true) do |row|
  row << ["Name", "Country", "Age"]
  players.each do |player|
    # player -> _HASH_
    row << [player[:name], player[:country], player[:age]]
  end
end
