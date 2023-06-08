puts "🌱 Seeding messages..."

# Creating electronic records using create or create!
Electronic.create(name: 'Laptop', price: '999', image: 'laptop.jpg')
Electronic.create(name: 'Smartphone', price: '599', image: 'phone.jpg')
Electronic.create(name: 'Fridge', price: '1499', image: 'fridge.jpg')
Electronic.create(name: 'Washing Machine', price: '899', image: 'washing_machine.jpg')
Electronic.create(name: 'Headphones', price: '199', image: 'headphones.jpg')
Electronic.create(name: 'iPad', price: '799', image: 'ipad.jpg')
Electronic.create(name: 'Microwave', price: '299', image: 'microwave.jpg')


puts "✅ Done seeding!"
