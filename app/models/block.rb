class Block < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, styles: { large: "1280x1024", medium: "300x300>" }

  has_attached_file :image_primary, styles: { large: "1280x1024", medium: "300x300>" }
  has_attached_file :image_secondary, styles: { large: "1280x1024", medium: "300x300>" }
  has_attached_file :image_tertiary, styles: { large: "1280x1024", medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image_primary, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image_secondary, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image_tertiary, content_type: /\Aimage\/.*\Z/
  default_scope { order(:created_at) }
end
