class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.string :thumb
      t.string :pdf
      t.string :editor

      t.timestamps
    end
  end
end
