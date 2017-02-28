class SalePostsController < ApplicationController
  before_action :set_sale_post, only: [:show, :edit, :update, :destroy]

  # GET /sale_posts
  # GET /sale_posts.json
  def index
    @sale_posts = SalePost.all
  end

  # GET /sale_posts/1
  # GET /sale_posts/1.json
  def show
  end

  # GET /sale_posts/new
  def new
    @sale_post = SalePost.new
  end

  # GET /sale_posts/1/edit
  def edit
  end

  # POST /sale_posts
  # POST /sale_posts.json
  def create
    @sale_post = SalePost.new(sale_post_params)

    respond_to do |format|
      if @sale_post.save
        format.html { redirect_to @sale_post, notice: 'Sale post was successfully created.' }
        format.json { render :show, status: :created, location: @sale_post }
      else
        format.html { render :new }
        format.json { render json: @sale_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_posts/1
  # PATCH/PUT /sale_posts/1.json
  def update
    respond_to do |format|
      if @sale_post.update(sale_post_params)
        format.html { redirect_to @sale_post, notice: 'Sale post was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_post }
      else
        format.html { render :edit }
        format.json { render json: @sale_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_posts/1
  # DELETE /sale_posts/1.json
  def destroy
    @sale_post.destroy
    respond_to do |format|
      format.html { redirect_to sale_posts_url, notice: 'Sale post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_post
      @sale_post = SalePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_post_params
      params.require(:sale_post).permit(:name, :bid, :size, :diet, :description, :duration)
    end
end
