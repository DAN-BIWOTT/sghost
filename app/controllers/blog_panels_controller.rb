class BlogPanelsController < ApplicationController
  before_action :set_blog_panel, only: [:show, :edit, :update, :destroy]

  # GET /blog_panels
  # GET /blog_panels.json
  def index
    @blog_panels = BlogPanel.all
  end

  # GET /blog_panels/1
  # GET /blog_panels/1.json
  def show
  end

  # GET /blog_panels/new
  def new
    @blog_panel = BlogPanel.new
  end

  # GET /blog_panels/1/edit
  def edit
  end

  # POST /blog_panels
  # POST /blog_panels.json
  def create
    @blog_panel = BlogPanel.new(blog_panel_params)

    respond_to do |format|
      if @blog_panel.save
        format.html { redirect_to @blog_panel, notice: 'Blog panel was successfully created.' }
        format.json { render :show, status: :created, location: @blog_panel }
      else
        format.html { render :new }
        format.json { render json: @blog_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_panels/1
  # PATCH/PUT /blog_panels/1.json
  def update
    respond_to do |format|
      if @blog_panel.update(blog_panel_params)
        format.html { redirect_to @blog_panel, notice: 'Blog panel was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_panel }
      else
        format.html { render :edit }
        format.json { render json: @blog_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_panels/1
  # DELETE /blog_panels/1.json
  def destroy
    @blog_panel.destroy
    respond_to do |format|
      format.html { redirect_to blog_panels_url, notice: 'Blog panel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_panel
      @blog_panel = BlogPanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_panel_params
      params.require(:blog_panel).permit(:btitle, :bimage, :bmessage)
    end
end
