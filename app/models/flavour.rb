class Flavour < ActiveRecord::Base

  belongs_to :section


  scope :base,     -> { joins(:section).where( sections: {name: :Base}) }
  scope :topping,  -> { joins(:section).where( sections: {name: :Frosting}) }
  scope :frosting, -> { joins(:section).where( sections: {name: :Topping}) }
  
  validates :name, uniqueness: { scope: :section_id }

end
