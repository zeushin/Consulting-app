class Consultant < ActiveRecord::Base
  has_many :careers, :dependent => :destroy
  has_many :books, :dependent => :destroy
  
  validates :name, :presence => true

  after_create :create_photo_path

  private
  def create_photo_path
    unless self.photo
      self.photo = "#{self.id} - #{self.name}"
      self.save
    end
  end

end
