class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :composer
      t.integer :song_no
      t.integer :parts_no
      t.string :voices

      t.timestamps
    end
  end
end
