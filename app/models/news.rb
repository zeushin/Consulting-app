class News < ActiveRecord::Base
  validates :link_address, :presence => true
end
