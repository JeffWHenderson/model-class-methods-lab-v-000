class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.longest
    Boat.longest_boat.classifications
  end

  def self.my_all
    all
  end
end
