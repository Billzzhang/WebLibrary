# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create('978-1643132037', 'Imagination: The Science of Your Mind''s Greatest Power', 'Jim Davies', 'Educational')
Book.create('978-0590353403', 'Harry Potter And The Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy')
Book.create('978-1524855765', 'We Hope This Reaches You In Time', 'r.h. Sin', 'Poetry')
Book.create('978-0547928227', 'The Hobbit', 'J.R.R. Tolkien', 'Action & Adventure')
Book.create('978-1694979346', '1984', 'George Orwell', 'Classic')
Book.create('978-1401263119', 'Batman: The Dark Knight Returns 30th Anniversary Edition', 'Frank Miller', 'Graphic Novel')

Bookstore.create('1', 'Look Inna Book', '506 Lakeridge D', '613-606-9065')

Publisher.create('blackrose@gmail.com', 'Black Rose Books', '1430 Hammarskjold Dr', '101106989')
Publisher.create('cyclopspress@gmail.com', 'Cyclops Press', '1990  René-Lévesque Blvd', '4716151361')


