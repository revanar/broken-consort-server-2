class ChangeTypeToCategoryInTags < ActiveRecord::Migration[5.1]
  def change
    remove_column :tags, :type, :string
    add_column :tags, :category, :string
  end
end
