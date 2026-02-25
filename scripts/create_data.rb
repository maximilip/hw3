Place.destroy_all

# Create places

mexico = Place.new
mexico["name"] = "Mexico City"
mexico.save

charleston = Place.new
charleston["name"] = "Charleston"
charleston.save

beijing = Place.new
beijing["name"] = "Beijing"
beijing.save

amsterdam = Place.new
amsterdam["name"] = "Amsterdam"
amsterdam.save

# Create entries

tacos = Entry.new
tacos["title"] = "Ate tacos"
tacos["description"] = "Authentic"
tacos["occurred_on"] = "2022-01-01"
tacos["place_id"] = mexico.id
tacos.save