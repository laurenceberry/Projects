class CreateBlockElement < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :title
      t.text :text_block
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
