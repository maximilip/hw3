Place.destroy_all

# Create companies

mexico = Place.new
mexico["name"] = "Mexico City"
mexico.save