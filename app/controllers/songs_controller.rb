class SongsController < ApplicationController
  # GET /songs
  # GET /songs.xml
  def index
    @songs = Song.paginate :page => params[:page],:per_page => 20,:order => 'category_id ASC'
    @title = "Manage Songs"
    respond_to do |format|
      format.js
      format.html # index.html.haml
      format.xml  { render :xml => @songs }
    end
  end

  # GET /songs/new
  # GET /songs/new.xml
  def new
    @song = Song.new
    @title = "New Song"
    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @song }
    end
  end

  # GET /songs/1/edit
  def edit
    @song = Song.find(params[:id])
    @title = "Edit Song"
  end

  # POST /songs
  # POST /songs.xml
  def create
    @song = Song.new(params[:song])

    respond_to do |format|
      if @song.save
        format.html { redirect_to songs_path }
        format.xml  { render :xml => @song, :status => :created, :location => @song }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @song.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /songs/1
  # PUT /songs/1.xml
  def update
    @song = Song.find(params[:id])

    respond_to do |format|
      if @song.update_attributes(params[:song])
        format.html { redirect_to songs_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @song.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.xml
  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.html { redirect_to(songs_path) }
      format.xml  { head :ok }
    end
  end
#view add_category.html.haml
  def add_category
    @title = "Add Category"
    @category = Category.new
  end
# Post 
  def create_category
    @category = Category.new(params[:category])
    if @category.save
      redirect_to zard_songs_path
    else
      redirect_to category_path
    end
  end
  
  def destroy_category
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to zard_songs_path  
  end
end

