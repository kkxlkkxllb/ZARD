class SisterController < ApplicationController
  #caches_page :index
  def index
    @title = "Beautiful Heart"
    @songs = Song.all
  end

  def songs
    @title = "Beautiful Sounds"
      @categories = Category.paginate :page => params[:page],:per_page => 4
    
    respond_to do |format|
      format.js
      format.html 
    end
    
  end

  def images
    @title = "Beautiful Memory"
    @images = Image.paginate :page => params[:page], :per_page => 16
    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @images }
    end
  end

  def movies
    @title = "Beautiful Moment"
    @movies = Movie.all
  end
  
  def song_love
    @song = Song.find(params[:id])
    @love = @song.love+1
    @song.update_attribute(:love,@love)
    respond_to do |format|
      format.js
    end
  end
  
  def listen_song
    @song = Song.find(params[:id])
    render :partial => "lyric"
  end

end
