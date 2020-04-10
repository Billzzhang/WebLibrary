# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.delete_all
Bookstore.delete_all
Publisher.delete_all
Book.create([{isbn: '978-1643132037', title:'Imagination: The Science of Your Mind''s Greatest Power', author: 'Jim Davies', genre: 'Educational'}])
Book.create([{isbn: '978-0590353403', title:'Harry Potter And The Sorcerer''s Stone', author: 'J.K. Rowling', genre: 'Fantasy'}])
Book.create([{isbn: '978-1524855765', title:'We Hope This Reaches You In Time', author: 'r.h. Sin', genre: 'Poetry'}])
Book.create([{isbn: '978-0547928227', title:'The Hobbit', author:'J.R.R. Tolkien', genre: 'Action & Adventure'}])
Book.create([{isbn: '978-1694979346', title:'1984', author: 'George Orwell', genre: 'Classic'}])
Book.create([{isbn: '978-1401263119', title:'Batman: The Dark Knight Returns 30th Anniversary Edition', author: 'Frank Miller', genre: 'Graphic Novel'}])

Bookstore.create([{name: 'Look Inna Book', address: '506 Lakeridge D', phone_num: '613-606-9065'}])

Publisher.create([{email: 'blackrose@gmail.com', name: 'Black Rose Books', address: '1430 Hammarskjold Dr', banking_information: '101106989'}])
Publisher.create([{email: 'cyclopspress@gmail.com', name: 'Cyclops Press', address: '1990  René-Lévesque Blvd', banking_information: '4716151361'}])


