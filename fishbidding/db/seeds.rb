# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

saleposts = SalePost.create([{ name: 'Indonesian Tiger', bid: 80.0, size: 8.5, diet: 'Market Prawn', description: 'Have been keeping this tiger since it was 3 inches small. 24 hours stable in clean solid colors. Reason for sale is to reduce my current bio-load for new fishes.', duration: 24 },
                             { name: 'Gold Arowana', bid: 350.0, size: 9, diet: 'Hikari Floating Sticks', description: 'Tagged and certified by Asian Arowana Pte. Ltd. No defects except for some scarring from previous community fights. Reason for selling: Quitting this hobby.', duration: 8 },
                             { name: 'Black Diamond Ray (Pure)', bid: 900.0, size: 4.5, diet: 'Market Prawn', description: 'Pure P13 line, working female. Just gave birth to many pups last month. Has a huge appetite and is not territorial against other rays.', duration: 24 }
                             ])
