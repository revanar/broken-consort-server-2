# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


book = Book.create(title: 'Test Book', year: 1601, editor: 'Literally every sheep')

book.songs.create(title: 'Test Song')
Song.create(title: 'Test Song 2: The Revenge!')

tag = Tag.create([{title:'English', abbr: 'Eng', category: 'language', desc:'Song has lyrics in English', color:'#000000'}])
tag << Song.find_by_title('Test Song')
tag << Song.find_by_title('Test Song 2: The Revenge!')
