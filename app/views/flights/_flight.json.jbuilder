json.extract! flight, :id, :date, :flightnumber, :departure, :departureTime ,:arrival, :arrivalTime, :plane, :seat, :created_at, :updated_at
json.url flight_url(flight, format: :json)
