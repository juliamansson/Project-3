class Customisation < ActiveRecord::Base
  belongs_to :section
  belongs_to :order
  belongs_to :flavour
end
