class Order < ActiveRecord::Base

  belongs_to :user
  has_many :customisations

  accepts_nested_attributes_for :customisations,allow_destroy: true

  delegate :section, :flavour, to: :customisation, prefix: true, allow_nil: true


  def customisation_display(section_name)
    customisations.send(section_name).map { |customisation| customisation.flavour.name }.to_sentence
  end

  def image_name_for(section, flavour)
    base      = section.name == 'Base'      ? flavour.image_name : customisations.base.first.try(:image_name)
    topping   = section.name == 'Topping'   ? flavour.image_name : customisations.topping.first.try(:image_name)
    frosting  = section.name == 'Frosting'  ? flavour.image_name : customisations.frosting.first.try(:image_name)

    [topping, frosting, base].delete_if(&:blank?).join('-') << '.png'
  end


  # def order_section
  #   customisations.try(:section).try(:name)

  # end


  # attr_writer :current_step

  # def current_step
  #   @current_step || steps.first
  # end

  # def steps
  #   %w[base frosting topping show_cupcake]
  # end

  # def next_step
  #   self.current_step = steps[steps.index(current_step)+1]
  # end

  # def previous_step
  #   self.current_step = steps[steps.index(current_step)-1]
  # end

  # def first_step?
  #   current_step == steps.first
  # end

  # def last_step?
  #   current_step == steps.last
  # end 

end
