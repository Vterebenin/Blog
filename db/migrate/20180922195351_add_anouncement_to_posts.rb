class AddAnouncementToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :anouncement, :text
  end
end
