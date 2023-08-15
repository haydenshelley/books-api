# books = CSV.read("books.csv")

# i = 1
# while i < books.length
#   book = Book.new(
#   title: books[i][0],
#   price: books[i][1],
#   availability: books[i][2]
#   )
#   book.save
#   i += 1
# end

# 20.times do
#   store = Store.create(
#     name: Faker::Commerce.vendor,
#     location: Faker::Address.street_address
#   )
# end

i = 2
while i <= 1001
  Inventory.create(
    book_id: i,
    store_id: rand(1...20)
  )
  i += 1
end