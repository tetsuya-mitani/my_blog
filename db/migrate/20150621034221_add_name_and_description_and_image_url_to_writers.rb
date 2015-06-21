class AddNameAndDescriptionAndImageUrlToWriters < ActiveRecord::Migration
  def change
    add_column :writers, :name, :string
    add_column :writers, :description, :string
    add_column :writers, :image_url, :string
  end
end
