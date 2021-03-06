class Admin::ProductsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /admin/products
  # GET /admin/products.json
  def index
    @products = @current_account.products

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
    @product = @current_account.products.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /admin/products/new
  # GET /admin/products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /admin/products/1/edit
  def edit
    @product = @current_account.products.find(params[:id])
  end

  # POST /admin/products
  # POST /admin/products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to [:admin, @product], notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/products/1
  # PUT /admin/products/1.json
  def update
    @product = @current_account.products.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to [:admin, @product], notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.json
  def destroy
    @product = @current_account.products.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to admin_products_url }
      format.json { head :no_content }
    end
  end
end
