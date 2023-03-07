# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kaepora = Band.create!(name: "Kaepora")

jim = kaepora.musicians.create!(name: "James Harkins")
ian = kaepora.musicians.create!(name: "Ian Ferguson")
blair = kaepora.musicians.create!(name: "Blair Hicks")
miles = kaepora.musicians.create!(name: "Miles McKee")
evan = kaepora.musicians.create!(name: "Evan Sheely")
dylan = kaepora.musicians.create!(name: "Dylan French")

show_1 = kaepora.shows.create!(date: Date.parse('2022-12-09'), venue: "Cervantes' Other Side", ticket_price: 12)
show_2 = kaepora.shows.create!(date: Date.parse('2023-3-10'), venue: "Broadway Roxy", ticket_price: 15)
show_3 = kaepora.shows.create!(date: Date.parse('2023-4-15'), venue: "Red Rocks", ticket_price: 50)

show_1_ticket_1 = show_1.tickets.create!(buyer: "Tony Soprano", quantity: 2, cost: 24, musician: jim)
show_1_ticket_2 = show_1.tickets.create!(buyer: "Junior Soprano", quantity: 1, cost: 12, musician: jim)
show_1_ticket_3 = show_1.tickets.create!(buyer: "Chrissie Moltisanti", quantity: 3, cost: 36, musician: ian)
show_1_ticket_4 = show_1.tickets.create!(buyer: "Sylvio Dante", quantity: 2, cost: 24, musician: ian)
show_1_ticket_5 = show_1.tickets.create!(buyer: "Bobbi Baccalieri", quantity: 4, cost: 48, musician: blair)
show_1_ticket_6 = show_1.tickets.create!(buyer: "Ralphie Cifaretto", quantity: 2, cost: 24, musician: dylan)

show_2_ticket_1 = show_2.tickets.create!(buyer: "Tony Soprano", quantity: 4, cost: 60, musician: jim)
show_2_ticket_2 = show_2.tickets.create!(buyer: "Junior Soprano", quantity: 2, cost: 30, musician: jim)
show_2_ticket_3 = show_2.tickets.create!(buyer: "Chrissie Moltisanti", quantity: 3, cost: 45, musician: ian)
show_2_ticket_4 = show_2.tickets.create!(buyer: "Sylvio Dante", quantity: 1, cost: 15, musician: ian)
show_2_ticket_5 = show_2.tickets.create!(buyer: "Bobbi Baccalieri", quantity: 5, cost: 75, musician: blair)
show_2_ticket_6 = show_2.tickets.create!(buyer: "Ralphie Cifaretto", quantity: 2, cost: 30, musician: dylan)
show_2_ticket_7 = show_2.tickets.create!(buyer: "Richie Aprile", quantity: 1, cost: 15, musician: miles)

show_3_ticket_1 = show_3.tickets.create!(buyer: "Tony Soprano", quantity: 3, cost: 150, musician: jim)
show_3_ticket_2 = show_3.tickets.create!(buyer: "Junior Soprano", quantity: 2, cost: 100, musician: jim)
show_3_ticket_3 = show_3.tickets.create!(buyer: "Chrissie Moltisanti", quantity: 4, cost: 200, musician: ian)
show_3_ticket_4 = show_3.tickets.create!(buyer: "Sylvio Dante", quantity: 6, cost: 300, musician: ian)
show_3_ticket_5 = show_3.tickets.create!(buyer: "Bobbi Baccalieri", quantity: 5, cost: 250, musician: blair)
show_3_ticket_6 = show_3.tickets.create!(buyer: "Ralphie Cifaretto", quantity: 2, cost: 100, musician: dylan)
show_3_ticket_7 = show_3.tickets.create!(buyer: "Richie Aprile", quantity: 1, cost: 50, musician: miles)