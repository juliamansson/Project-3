class Flavour < ActiveRecord::Base

  belongs_to :section


  scope :base,     -> { joins(:section).merge(Section.base) }
  scope :topping,  -> { joins(:section).merge(Section.topping) }
  scope :frosting, -> { joins(:section).merge(Section.frosting) }
  
  validates :name, uniqueness: { scope: :section_id }



  def image_name
    @@images ||= %w(45.png 46.png 47.jpeg 48.jpg 49.jpeg)
    @@images.pop
  end
end
