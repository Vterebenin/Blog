class AddTopPictureToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :top_picture, :string
  end
end
