class CrateJoinTableSongTag < ActiveRecord::Migration[5.1]
  def change
    create_join_table :songs, :tags do |t|
      t.index [:song_id, :tag_id]
      # t.index [:tag_id, :song_id]
    end
  end
end
