class Consulting < ActiveRecord::Base
  has_many :cautions, :dependent => :destroy
  has_many :news, :dependent => :destroy
  belongs_to :consultant

  validates :topic, :presence => true
  validates :consultant_id, :presence => true
end
