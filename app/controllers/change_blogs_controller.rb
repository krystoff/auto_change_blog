class ChangeBlogsController < ApplicationController
  # GET /change_blogs
  # GET /change_blogs.json
  def index
    @change_blogs = ChangeBlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @change_blogs }
    end
  end

  # GET /change_blogs/1
  # GET /change_blogs/1.json
  def show
    @change_blog = ChangeBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @change_blog }
    end
  end

  # GET /change_blogs/new
  # GET /change_blogs/new.json
  def new
    @change_blog = ChangeBlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @change_blog }
    end
  end

  # GET /change_blogs/1/edit
  def edit
    @change_blog = ChangeBlog.find(params[:id])
  end

  # POST /change_blogs
  # POST /change_blogs.json
  def create
    @change_blog = ChangeBlog.new(params[:change_blog])

    respond_to do |format|
      if @change_blog.save
        format.html { redirect_to @change_blog, notice: 'Change blog was successfully created.' }
        format.json { render json: @change_blog, status: :created, location: @change_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @change_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /change_blogs/1
  # PUT /change_blogs/1.json
  def update
    @change_blog = ChangeBlog.find(params[:id])

    respond_to do |format|
      if @change_blog.update_attributes(params[:change_blog])
        format.html { redirect_to @change_blog, notice: 'Change blog was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @change_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_blogs/1
  # DELETE /change_blogs/1.json
  def destroy
    @change_blog = ChangeBlog.find(params[:id])
    @change_blog.destroy

    respond_to do |format|
      format.html { redirect_to change_blogs_url }
      format.json { head :ok }
    end
  end
end
