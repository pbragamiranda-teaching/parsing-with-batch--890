require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)
beatles = JSON.parse(serialized_beatles)

beatles["beatles"].each do |beatle|
  # beatle -> _HASH_
  p beatle["instrument"]
end
