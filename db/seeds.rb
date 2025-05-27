# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Booking.destroy_all
Listing.destroy_all
User.destroy_all

user = User.create!(username: "testuser1", email: "test@test.no", password: "123456", role: "seller")

puts "Creating listings..."

Listing.create!(
  [
    { description: "Prime front-row spot! Stunning view right by the shoreline.",
      price_per_hour: 10, spot_row: 1, spot_column: 3, user: user },

    { description: "Relax in the second row—great balance of shade and ocean breeze.",
      price_per_hour: 8, spot_row: 2, spot_column: 15, user: user },

    { description: "Third-row tranquility! Close to amenities but peacefully tucked away.",
      price_per_hour: 6, spot_row: 3, spot_column: 22, user: user },

    { description: "Affordable fourth-row spot, ideal for relaxing away from the crowds.",
      price_per_hour: 4, spot_row: 4, spot_column: 37, user: user },

    { description: "Golden front-row spot! Listen to the waves right at your feet.",
      price_per_hour: 10, spot_row: 1, spot_column: 10, user: user },

    { description: "Second row—perfect for families looking for easy beach access.",
      price_per_hour: 8, spot_row: 2, spot_column: 9, user: user },

    { description: "Third-row spot, ideal for those who want a mix of convenience and quiet.",
      price_per_hour: 6, spot_row: 3, spot_column: 18, user: user },

    { description: "Enjoy a peaceful fourth-row spot with extra space around you.",
      price_per_hour: 4, spot_row: 4, spot_column: 49, user: user },

    { description: "Front row! Breathtaking view, perfect for a sun-soaked escape.",
      price_per_hour: 10, spot_row: 1, spot_column: 42, user: user },

    { description: "Second-row shade! A great spot near the middle of the beach.",
      price_per_hour: 8, spot_row: 2, spot_column: 7, user: user },

    { description: "Third-row convenience—steps away from refreshments!",
      price_per_hour: 6, spot_row: 3, spot_column: 24, user: user },

    { description: "Spacious fourth-row area, great for groups looking for quiet.",
      price_per_hour: 4, spot_row: 4, spot_column: 33, user: user },

    { description: "Oceanfront front-row luxury! Best view guaranteed.",
      price_per_hour: 10, spot_row: 1, spot_column: 29, user: user },

    { description: "Second-row breeze! Close to the water but easy access to facilities.",
      price_per_hour: 8, spot_row: 2, spot_column: 46, user: user },

    { description: "Third-row shaded comfort—perfect for those who prefer cooler spots.",
      price_per_hour: 6, spot_row: 3, spot_column: 11, user: user },

    { description: "Affordable fourth-row escape, ideal for relaxing with extra space.",
      price_per_hour: 4, spot_row: 4, spot_column: 5, user: user },

    { description: "Exclusive front-row spot! Feel the sand and surf right in front of you.",
      price_per_hour: 10, spot_row: 1, spot_column: 50, user: user },

    { description: "Second row—enjoy the view without being directly in the sun.",
      price_per_hour: 8, spot_row: 2, spot_column: 40, user: user },

    { description: "Third-row relaxation—right near all the essential amenities.",
      price_per_hour: 6, spot_row: 3, spot_column: 14, user: user },

    { description: "Private fourth-row retreat! Perfect for a peaceful beach day.",
      price_per_hour: 4, spot_row: 4, spot_column: 20, user: user },

    { description: "Prestige front-row! Watch the waves roll in from your prime spot.",
      price_per_hour: 10, spot_row: 1, spot_column: 2, user: user },

    { description: "Second-row beauty—excellent view with easy access to food stalls.",
      price_per_hour: 8, spot_row: 2, spot_column: 35, user: user },

    { description: "Third-row serenity, perfect for those who love a calm beach vibe.",
      price_per_hour: 6, spot_row: 3, spot_column: 6, user: user },

    { description: "Relax in the fourth row, an ideal space for unwinding far from the crowd.",
      price_per_hour: 4, spot_row: 4, spot_column: 19, user: user },

    { description: "Front-row escape! Ideal for soaking up uninterrupted sun and views.",
      price_per_hour: 10, spot_row: 1, spot_column: 21, user: user },

    { description: "Second-row shade—comfortable and close to key beach facilities.",
      price_per_hour: 8, spot_row: 2, spot_column: 17, user: user },

    { description: "Perfect third-row getaway! Slightly shaded yet close to all amenities.",
      price_per_hour: 6, spot_row: 3, spot_column: 39, user: user },

    { description: "Fourth-row space! Enjoy a peaceful atmosphere far from the bustle.",
      price_per_hour: 4, spot_row: 4, spot_column: 27, user: user },

    { description: "Exclusive front-row experience! Best view and ultimate relaxation.",
      price_per_hour: 10, spot_row: 1, spot_column: 31, user: user },

    { description: "Second-row convenience—comfortable spot with refreshing breezes.",
      price_per_hour: 8, spot_row: 2, spot_column: 23, user: user },

    { description: "Third-row comfort, great mix of shade and accessibility.",
      price_per_hour: 6, spot_row: 3, spot_column: 48, user: user },

    { description: "Spacious fourth-row seating! A tranquil place for a quiet beach day.",
      price_per_hour: 4, spot_row: 4, spot_column: 8, user: user },

    { description: "Front-row perfection! VIP oceanfront seating.",
      price_per_hour: 10, spot_row: 1, spot_column: 45, user: user },

    { description: "Second row—breezy and well-positioned for all beach activities.",
      price_per_hour: 8, spot_row: 2, spot_column: 1, user: user },

    { description: "Comfortable third-row spot—close to snack bars and shaded areas.",
      price_per_hour: 6, spot_row: 3, spot_column: 43, user: user },

    { description: "Secluded fourth-row spot—best for quiet reading or meditation.",
      price_per_hour: 4, spot_row: 4, spot_column: 12, user: user },

    { description: "Front-row paradise! Experience uninterrupted ocean views.",
    price_per_hour: 10, spot_row: 1, spot_column: 12, user: user },

    { description: "Second-row relaxation—close to the water yet comfortably shaded.",
      price_per_hour: 8, spot_row: 2, spot_column: 32, user: user },

    { description: "Convenient third-row spot! Just a short walk to beach bars.",
      price_per_hour: 6, spot_row: 3, spot_column: 45, user: user },

    { description: "Secluded fourth-row area! Extra space for peaceful sunbathing.",
      price_per_hour: 4, spot_row: 4, spot_column: 26, user: user },

    { description: "Exclusive front-row retreat! Golden sand at your feet.",
      price_per_hour: 10, spot_row: 1, spot_column: 8, user: user },

    { description: "Second-row charm—perfect mix of shade and sea breeze.",
      price_per_hour: 8, spot_row: 2, spot_column: 41, user: user },

    { description: "Third-row comfort! Well-balanced shade and easy access to amenities.",
      price_per_hour: 6, spot_row: 3, spot_column: 16, user: user },

    { description: "Fourth-row tranquility! A quiet corner perfect for relaxation.",
      price_per_hour: 4, spot_row: 4, spot_column: 35, user: user },

    { description: "VIP front-row seating! No distractions, just the waves.",
      price_per_hour: 10, spot_row: 1, spot_column: 27, user: user },

    { description: "Second-row freshness—perfect spot for a sunny beach day.",
      price_per_hour: 8, spot_row: 2, spot_column: 6, user: user },

    { description: "Third-row shaded luxury! Perfect for families seeking a balance.",
      price_per_hour: 6, spot_row: 3, spot_column: 50, user: user },

    { description: "Fourth-row peacefulness! Away from crowds, ideal for a nap.",
      price_per_hour: 4, spot_row: 4, spot_column: 11, user: user },

    { description: "Oceanfront front-row magic! Best sunrise and sunset views.",
      price_per_hour: 10, spot_row: 1, spot_column: 20, user: user },

    { description: "Second-row breeze! Near the center, great access to everything.",
      price_per_hour: 8, spot_row: 2, spot_column: 48, user: user }
  ]
)
puts "Finished! Created #{Listing.count} spots."

puts "creating users..."

User.create!(
  [
    { username: "beachgoer1", email: "clark.kent@smallvillenews.com", password: "123456", role: "buyer" },
    { username: "buyer1", email: "buyer1@example.com", password: "123456", role: "buyer" },
    { username: "buyer2", email: "buyer2@example.com", password: "123456", role: "buyer" },
    { username: "buyer3", email: "buyer3@example.com", password: "123456", role: "buyer" },
    { username: "buyer4", email: "buyer4@example.com", password: "123456", role: "buyer" },
    { username: "buyer5", email: "buyer5@example.com", password: "123456", role: "buyer" },
    { username: "buyer6", email: "buyer6@example.com", password: "123456", role: "buyer" },
    { username: "buyer7", email: "buyer7@example.com", password: "123456", role: "buyer" },
    { username: "buyer8", email: "buyer8@example.com", password: "123456", role: "buyer" },
    { username: "seller1", email: "seller1@example.com", password: "123456", role: "seller" },
]
)
puts "Finished! Created #{User.count} users."

Booking.create!(
  [
    { start_date: "2025-04-30 12:00:00", end_date: "2025-04-30 15:00:00", price: 30,
      status: "confirmed", user: User.where(role: "buyer").first, listing: Listing.all.sample},
    { start_date: "2025-04-28 12:00:00", end_date: "2025-04-30 15:00:00", price: 30,
      status: "confirmed", user: User.where(role: "buyer").first, listing: Listing.all.sample},
    { start_date: "2025-04-27 15:00:00", end_date: "2025-04-27 16:00:00", price: 10,
      status: "confirmed", user: User.where(role: "buyer").first, listing: Listing.all.sample},

  ]
)

puts "Finished! Created #{Booking.count} bookings."
