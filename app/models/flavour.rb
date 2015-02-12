class Flavour < ActiveRecord::Base

  belongs_to :section
  

  scope :base,     -> { where section: :base }
  scope :topping,  -> { where section: :topping }
  scope :frosting, -> { where section: :frosting }
  
  validates :name, uniqueness: { scope: :section }

end
