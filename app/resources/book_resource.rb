class BookResource < JSONAPI::Resource
  attributes :title, :year, :editor

  has_many :songs
end
