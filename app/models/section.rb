class Section < ActiveRecord::Base

  has_many :flavours


  scope :base,      -> { where( name: :Base ) }
  scope :topping,   -> { where( name: :Topping ) }
  scope :frosting,  -> { where( name: :Frosting ) }
end
