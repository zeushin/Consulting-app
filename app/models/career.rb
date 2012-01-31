class Career < ActiveRecord::Base
  attr_accessible :id, :since_date, :until_date, :substance, :consultant_id

  belongs_to :consultant

  validates :consultant_id, :presence => true
  validates :substance, :presence => true
end
