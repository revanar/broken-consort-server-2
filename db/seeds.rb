# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create(title:'English', abbr:'Eng', category:'language', desc:'Song has lyrics in English')
Tag.create(title:'Latin', abbr:'Lat', category:'language', desc:'Song has lyrics in Latin')
Tag.create(title:'Popular', abbr:'Hot', category:'subject', desc:'This piece is very popular')
Tag.create(title:'Exciting', abbr:'!!!', category:'subject', desc:"Don't play this around people with heart conditions!")

song = Song.create(title:'Bona Speranza', parts_no:5, voices:'aatsb', composer:'Test Man')
  song.tags << Tag.find_by_title('English')
  song.tags << Tag.find_by_title('Latin')
  song.tags << Tag.find_by_title('Popular')
song = Song.create(title:'Tears of the Muses', parts_no:5, voices:'aatsb')
  song.tags << Tag.find_by_title('English')
  song.tags << Tag.find_by_title('Exciting')
song = Song.create(title:'Lachrimae Antiquae', parts_no:5, voices:'atssb')
  song.tags << Tag.find_by_title('Latin')
song = Song.create(title:'Lachrimae Antiquae Novae', parts_no:5, voices:'atssb')
  song.tags << Tag.find_by_title('Latin')
  song.tags << Tag.find_by_title('Popular')
song = Song.create(title:'Unquiet Thoughts', parts_no:4, voices:'assb', composer:'Test Man 2')
  song.tags << Tag.find_by_title('English')
  song.tags << Tag.find_by_title('Popular')
  song.tags << Tag.find_by_title('Exciting')

book = Book.create(title:'Pavans Galliards Almains', year:1599, editor:'Holborne')
  book.songs << Song.find_by_title('Bona Speranza')
  book.songs << Song.find_by_title('Tears of the Muses')
book = Book.create(title:'Lachrimae', year:1605, editor:'Dowland')
  book.songs << Song.find_by_title('Lachrimae Antiquae')
  book.songs << Song.find_by_title('Lachrimae Antiquae Novae')
book = Book.create(title:'First Book of Songs', year:1597, editor:'Dowland')
  book.songs << Song.find_by_title('Unquiet Thoughts')

