class FlavoursController < ApplicationController
  before_action :set_flavour, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @flavours = Flavour.all
    respond_with(@flavours)
  end

  def show
    respond_with(@flavour)
  end

  def new
    @flavour = Flavour.new
    respond_with(@flavour)
  end

  def edit
  end

  def create
    @flavour = Flavour.new(flavour_params)
    @flavour.save
    respond_with(@flavour)
  end

  def update
    @flavour.update(flavour_params)
    respond_with(@flavour)
  end

  def destroy
    @flavour.destroy
    respond_with(@flavour)
  end

  private
    def set_flavour
      @flavour = Flavour.find(params[:id])
    end

    def flavour_params
      params.require(:flavour).permit(:cupcake_section_id, :name)
    end
end
