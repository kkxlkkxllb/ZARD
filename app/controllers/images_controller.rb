class ImagesController < ApplicationController
  def index
    @images = Image.all
    @title ="Manage Images"
  end
  
  def new
    @image = Image.new
    @title = "New Image"
    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @image }
    end
  end
  
  def create
    @image = Image.new(params[:image])
    respond_to do |format|
      if @image.save
        format.html { redirect_to zard_images_path }
        format.xml  { render :xml => @image, :status => :created, :location => @image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to(images_path) }
      format.xml  { head :ok }
    end
  end
end
