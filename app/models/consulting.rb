class Consulting < ActiveRecord::Base
  has_many :cautions, :dependent => :destroy
  has_many :news, :dependent => :destroy
  belongs_to :consultant

  validates :topic, :presence => true
  validates :consultant_id, :presence => true
  
  # after_create :create_movie_path

  # private
  # def create_movie_path
  #   unless self.movie
  #     self.movie = "mov_#{self.id}"
  #     self.save
  #   end
  # end
end
