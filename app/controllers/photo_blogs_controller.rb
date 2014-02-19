class PhotoBlogsController < ApplicationController
  before_action :set_photo_blog, only: [:show, :edit, :update, :destroy]

  # GET /photo_blogs
  # GET /photo_blogs.json
  def index
    @photo_blogs = PhotoBlog.all
  end

  # GET /photo_blogs/1
  # GET /photo_blogs/1.json
  def show
  end

  # GET /photo_blogs/new
  def new
    @photo_blog = PhotoBlog.new
  end

  # GET /photo_blogs/1/edit
  def edit
  end

  # POST /photo_blogs
  # POST /photo_blogs.json
  def create
    @photo_blog = PhotoBlog.new(photo_blog_params)

    respond_to do |format|
      if @photo_blog.save
        format.html { redirect_to @photo_blog, notice: 'Photo blog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @photo_blog }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_blogs/1
  # PATCH/PUT /photo_blogs/1.json
  def update
    respond_to do |format|
      if @photo_blog.update(photo_blog_params)
        format.html { redirect_to @photo_blog, notice: 'Photo blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_blogs/1
  # DELETE /photo_blogs/1.json
  def destroy
    @photo_blog.destroy
    respond_to do |format|
      format.html { redirect_to photo_blogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_blog
      @photo_blog = PhotoBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_blog_params
      params.require(:photo_blog).permit(:entry, :location, :date_taken)
    end
end
