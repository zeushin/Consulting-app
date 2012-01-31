class Book < ActiveRecord::Base
  attr_accessible :id, :subject, :author, :publisher, :year, :consultant_id

  belongs_to :consultant

  validates :consultant_id, :presence => true
  validates :subject, :presence => true
end
