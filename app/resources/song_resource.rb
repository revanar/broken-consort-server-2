class SongResource < JSONAPI::Resource
  attributes :title, :composer, :song_no, :parts_no, :voices
end
