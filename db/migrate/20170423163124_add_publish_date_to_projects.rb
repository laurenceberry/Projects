class AddPublishDateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :publish_date, :date
  end
end
