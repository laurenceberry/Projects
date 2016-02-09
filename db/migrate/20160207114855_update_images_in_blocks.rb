class UpdateImagesInBlocks < ActiveRecord::Migration
  def up
    add_attachment :blocks, :image_1
    add_attachment :blocks, :image_2
    add_attachment :blocks, :image_3

  end

  def down
    remove_attachment :blocks, :image_1
    remove_attachment :blocks, :image_2
    remove_attachment :blocks, :image_3
  end
end
