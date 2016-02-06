class AddImagesToBlocks < ActiveRecord::Migration
  def up
    add_attachment :blocks, :image
  end

  def down
    remove_attachment :blocks, :image
  end
end
