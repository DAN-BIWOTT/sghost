class PublicBlogsController < ApplicationController
  before_action :set_public_blog, only: [:show, :edit, :update, :destroy]

  # GET /public_blogs
  # GET /public_blogs.json
  def index
    @public_blogs = PublicBlog.all
    @blog = BlogPanel.all
  end

  # GET /public_blogs/1
  # GET /public_blogs/1.json
  def show
  end

  # GET /public_blogs/new
  def new
    @public_blog = PublicBlog.new
  end

  # GET /public_blogs/1/edit
  def edit
  end

  # POST /public_blogs
  # POST /public_blogs.json
  def create
    @public_blog = PublicBlog.new(public_blog_params)

    respond_to do |format|
      if @public_blog.save
        format.html { redirect_to @public_blog, notice: 'Public blog was successfully created.' }
        format.json { render :show, status: :created, location: @public_blog }
      else
        format.html { render :new }
        format.json { render json: @public_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_blogs/1
  # PATCH/PUT /public_blogs/1.json
  def update
    respond_to do |format|
      if @public_blog.update(public_blog_params)
        format.html { redirect_to @public_blog, notice: 'Public blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_blog }
      else
        format.html { render :edit }
        format.json { render json: @public_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_blogs/1
  # DELETE /public_blogs/1.json
  def destroy
    @public_blog.destroy
    respond_to do |format|
      format.html { redirect_to public_blogs_url, notice: 'Public blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def detailed
    @spBlog = BlogPanel.find(params[:public_blog_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_blog
      @public_blog = PublicBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_blog_params
      params.require(:public_blog).permit(:comments, :primateName)
    end
end
