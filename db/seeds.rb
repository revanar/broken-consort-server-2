# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


book = Book.create(title: 'Test Book', year: 1601, editor: 'Literally every sheep')

book.songs.create(title: 'Test Song', parts_no: 4, voices: 'aatb', composer:'Blueface Leister')
Song.create(title: 'Test Song 2: The Revenge!', parts_no: 2, voices: 'ab', composer: 'Blueface Leister')

tag = Tag.create(title:'English', abbr: 'Eng', category: 'language', desc:'Song has lyrics in English', color:'#000000')
tag.songs << Song.find_by_title('Test Song')
tag.songs << Song.find_by_title('Test Song 2: The Revenge!')

tag = Tag.create(title:'Latin', abbr: 'Lat', category: 'language', desc:'Song has lyrics in Latin', color:'#000000')
tag.songs << Song.find_by_title('Test Song')

tag = Tag.create(title:'Spicy', category: 'subject', desc:'Singing this makes your mouth burn', color:'#FF0000')
tag.songs << Song.find_by_title('Test Song')