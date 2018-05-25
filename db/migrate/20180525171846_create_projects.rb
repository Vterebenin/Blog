class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :github
      t.string :demo
      t.string :project_picture

      t.timestamps
    end
  end
end
