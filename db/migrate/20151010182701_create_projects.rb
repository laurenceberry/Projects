class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :background
      t.text :project_description
      t.string :project_url

      t.timestamps
    end
  end
end
