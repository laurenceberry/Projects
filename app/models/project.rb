class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :blocks, :dependent => :destroy
  accepts_nested_attributes_for :blocks, allow_destroy: true
  default_scope { order(:created_at) }

end
