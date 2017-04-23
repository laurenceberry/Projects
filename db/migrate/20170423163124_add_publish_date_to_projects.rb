class AddPublishDateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :publish_date, :datetime
  end
end
