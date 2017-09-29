class SongResource < JSONAPI::Resource
  attributes :title, :composer, :song_no, :parts_no, :voices

  has_one :book
  has_many :tags, acts_as_set: true
end
