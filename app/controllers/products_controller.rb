class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
    @cart = current_cart
    #might need to switch @cart back to cart
  end

  def welcome
    @products = Product.all
    @cart = current_cart
    #might need to switch @cart back to cart
  end

  def customer_cart
    @cart = current_cart
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @cart = current_cart
    @male_shirt_sizes = {'Small' => 'Small', 'Medium' => 'Medium', 'Large' => 'Large', 'Extra Large' => 'Extra Large'}
    @female_shirt_sizes = {'Small' => 'Small', 'Medium' => 'Medium', 'Large' => 'Large'}
    @shirt_colors = {'White' => 'White', 'Black' => 'Black'}
    @hat_colors = {'White' => 'White', 'Black' => 'Black'}
    @quantity = {'1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5'}
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product }
        format.js
        format.json { head :no_content }
      else
        format.html { redirect_to @product }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /products/1/edit

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.price / 100

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :size, :color, :quantity, :avatar)
    end
end
