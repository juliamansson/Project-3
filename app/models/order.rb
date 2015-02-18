class Order < ActiveRecord::Base

  belongs_to :user
  has_many :customisations

  accepts_nested_attributes_for :customisations,allow_destroy: true
  delegate :section, :flavour, to: :customisation, prefix: true, allow_nil: true

  validates :name, :presence => true, :on => :update
  validates :address_line_1, :presence => true, :on => :update
  validates :address_line_2, :presence => true, :on => :update
  validates :city, :presence => true, :on => :update
  validates :post_code, :presence => true, :on => :update



  def customisation_display(section_name)
    customisations.send(section_name).map { |customisation| customisation.flavour.try :name }.delete_if(&:blank?).to_sentence
  end

  def image_name
    base      = customisations.base.first.try(:flavour).try(:image_name)
    topping   = customisations.topping.first.try(:flavour).try(:image_name)
    frosting  = customisations.frosting.first.try(:flavour).try(:image_name)

    [topping, frosting, base].delete_if(&:blank?).join('-') << '.png'
  end

  def address
    [address_line_1, address_line_2, city, post_code].delete_if(&:blank?).join(', ')
  end

  def placed?
    status.to_s == 'placed'
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
