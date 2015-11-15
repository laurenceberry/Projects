class Project < ActiveRecord::Base
  has_many :blocks, :dependent => :destroy
  accepts_nested_attributes_for :blocks, allow_destroy: true
  default_scope { order(:created_at) }
end
