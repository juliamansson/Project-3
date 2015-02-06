class CupcakeSectionsController < ApplicationController
  before_action :set_cupcake_section, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cupcake_sections = CupcakeSection.all
    respond_with(@cupcake_sections)
  end

  def show
    respond_with(@cupcake_section)
  end

  def new
    @cupcake_section = CupcakeSection.new
    respond_with(@cupcake_section)
  end

  def edit
  end

  def create
    @cupcake_section = CupcakeSection.new(cupcake_section_params)
    @cupcake_section.save
    respond_with(@cupcake_section)
  end

  def update
    @cupcake_section.update(cupcake_section_params)
    respond_with(@cupcake_section)
  end

  def destroy
    @cupcake_section.destroy
    respond_with(@cupcake_section)
  end

  private
    def set_cupcake_section
      @cupcake_section = CupcakeSection.find(params[:id])
    end

    def cupcake_section_params
      params.require(:cupcake_section).permit(:name)
    end
end
