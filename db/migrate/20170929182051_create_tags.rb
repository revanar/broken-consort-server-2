class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :title
      t.string :abbr
      t.string :type
      t.string :desc
      t.string :color

      t.timestamps
    end
  end
end
