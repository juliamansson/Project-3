class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]



  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    Section.all.each do |section|
      @order.customisations.new(section: section)
    end



    respond_with(@order)
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.save
    respond_with(@order)
    # session[:order_params].deep_merge!(params[:order]) if params[:order]
    # @order = Order.new(session[:order_params])
    # @order.current_step = session[:order_step]
    # if params[:back_button]
    #   @order.previous_step
    # elsif @order.last_step?
    #   @order.save
    # else
    #   @order.next_step
    # end
    # session[:order_step] = @order.current_step

    # if @order.new_record?
    #   render "new"
    # else
    #   session[:order_step] = session[:order_params] = nil
    #   flash[:notice] = "Cupcake saved"
    #   redirect_to @order
    # end
  end

  def update
    if @order.update(order_params)
      @order.update_columns(status: :placed)
      redirect_to @order
    else
      render :show
    end
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:user_id, :status, :price, :quantity, :date, :name, :address_line_1, :address_line_2, :city, :post_code,
      { customisations_attributes: [ :flavour_id, :section_id ] }
      )


    end
end
