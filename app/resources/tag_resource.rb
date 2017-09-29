class TagResource < JSONAPI::Resource
  attributes :title, :abbr, :category, :desc, :color

  has_many :songs
end
