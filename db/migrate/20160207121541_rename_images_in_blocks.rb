class RenameImagesInBlocks < ActiveRecord::Migration
  def up
    add_attachment :blocks, :image_primary
    add_attachment :blocks, :image_secondary
    add_attachment :blocks, :image_tertiary

  end

  def down
    remove_attachment :blocks, :image_primary
    remove_attachment :blocks, :image_secondary
    remove_attachment :blocks, :image_tertiary
  end

end
