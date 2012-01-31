class Caution < ActiveRecord::Base
  belongs_to :consulting

  validates :content, :presence => true
end
