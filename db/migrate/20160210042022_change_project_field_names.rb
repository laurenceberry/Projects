class ChangeProjectFieldNames < ActiveRecord::Migration
  def change
    remove_column :projects, :background
    add_column :projects, :intro, :text
    remove_column :projects, :project_description
    add_column :projects, :role, :string
    remove_column :projects, :project_url
    add_column :projects, :client, :string
  end
end
