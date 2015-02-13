class Flavour < ActiveRecord::Base

  belongs_to :section


  scope :base,     -> { joins(:section).merge(Section.base) }
  scope :topping,  -> { joins(:section).merge(Section.topping) }
  scope :frosting, -> { joins(:section).merge(Section.frosting) }
  
  validates :name, uniqueness: { scope: :section_id }

end
