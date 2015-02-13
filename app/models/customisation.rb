class Customisation < ActiveRecord::Base
  belongs_to :section
  belongs_to :order
  belongs_to :flavour

  scope :base,     -> { joins(:section).merge(Section.base) }
  scope :topping,  -> { joins(:section).merge(Section.topping) }
  scope :frosting, -> { joins(:section).merge(Section.frosting) }

end
