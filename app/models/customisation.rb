class Customisation < ActiveRecord::Base

belongs_to :cupcake_section
belongs_to :flavour
belongs_to :order

end
