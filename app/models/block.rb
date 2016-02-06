class Block < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, styles: { large: "1280x1024", medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  default_scope { order(:created_at) }
end
