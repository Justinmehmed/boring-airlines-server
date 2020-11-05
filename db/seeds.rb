User.destroy_all
u1 = User.create :email => "justin@ga.com", :password => "chicken"
u2 = User.create :email => "sarah@ga.com", :password => "chicken"
u3 = User.create :email => "bastien@ga.com", :password => "chicken"

puts "#{ User.count }"

Flight.destroy_all
f1 = Flight.create :date => "2020-11-05", :flightnumber => "1000", :departure => "SYD" , :departureTime => "7:00", :arrival => "JFK", :arrivalTime => "20:00",:plane => "1", :seat => "15"
f2 = Flight.create :date => "2020-11-06", :flightnumber => "500", :departure => "SYD", :departureTime => "5:00", :arrival => "JFK", :arrivalTime => "17:00",:plane => "1", :seat => "15"
f3 = Flight.create :date => "2020-11-07", :flightnumber => "1500", :departure => "SYD", :departureTime => "5:00", :arrival => "JFK", :arrivalTime => "10:00", :plane => "1", :seat => "15"

puts "#{ Flight.count}"

Airplane.destroy_all
a1 = Airplane.create :name => "747", :rows => "7", :columns => "3"
a2 = Airplane.create :name => "767", :rows => "7", :columns => "3"
a2 = Airplane.create :name => "787", :rows => "7", :columns => "3"

puts "#{ Airplane.count}"