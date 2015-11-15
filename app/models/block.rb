class Block < ActiveRecord::Base
  belongs_to :project

  default_scope { order(:created_at) }
end
