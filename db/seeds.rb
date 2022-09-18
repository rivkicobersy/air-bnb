# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Test", email: "test@test.com", password_digest: "password", image: "/image.jpg")
User.create(name: "Test2", email: "test2@test.com", password_digest: "password", image: "/image2.jpg")

Room.create(user_id: 1, address: "123 Main St", city: "Portland", state: "ME", price: 155.5, description: "Contemporary flat overlooking lots of snow", home_type: "House with a kick ass furnace", room_type: "private room", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1)
Room.create(user_id: 2, address: "123 Danger St", city: "Miami", state: "FL", price: 250.0, description: "Art Decco flat overlooking lots of beach", home_type: "Condo", room_type: "Entire Home", total_occupancy: 4, total_bedrooms: 2, total_bathrooms: 2)

RoomImage.create(room_id: 1, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Imperial_Hotel_Osaka_regular_[…]el_Osaka_regular_floor_standard_twin_room_20120630-001.jpg")
RoomImage.create(room_id: 1, url: "http://cdn.home-designing.com/wp-content/uploads/2018/05/stylish-mid-century-style-green-living-room.jpg")
RoomImage.create(room_id: 2, url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sitting-rooms-hilliard-locust-18-11-20-1578948041.jpg")

Reservation.create(user_id: 1, room_id: 1, start_date: "2022-10-01", end_date: "2022-10-03", price: 465.15, total_guests: 1)
Reservation.create(user_id: 2, room_id: 2, start_date: "2022-10-15", end_date: "2022-10-21", price: 1750.00, total_guests: 2)

Review.create(reservation_id: 1, rating: 4, comment: "Really nice furnace. Enjoy movies by the fire")
Review.create(reservation_id: 2, rating: 2, comment: "View was blocked by a big post. The hurricane made it difficulty to enjoy the beach.")
