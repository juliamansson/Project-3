class CustomisationsController < ApplicationController
  before_action :set_customisation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customisations = Customisation.all
    respond_with(@customisations)
  end

  def show
    respond_with(@customisation)
  end

  def new
    @customisation = Customisation.new
    respond_with(@customisation)
  end

  def edit
  end

  def create
    @customisation = Customisation.new(customisation_params)
    @customisation.save
    respond_with(@customisation)
  end

  def update
    @customisation.update(customisation_params)
    respond_with(@customisation)
  end

  def destroy
    @customisation.destroy
    respond_with(@customisation)
  end

  private
    def set_customisation
      @customisation = Customisation.find(params[:id])
    end

    def customisation_params
      params.require(:customisation).permit(:flavour_id, :order_id, :name)
    end
end
