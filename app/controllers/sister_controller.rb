class SisterController < ApplicationController
  def index
    @title = "ZARD"
  end

  def songs
    @title = "Songs"
    @categories = Category.paginate :page => params[:page],:per_page => 7
    
  end

  def images
    @title = "Images"
    @images = Image.paginate :page => params[:page], :per_page => 12
  end

  def movies
    @title = "Movies"
    @movies = Movie.all
  end
  
  def song_toggle
    @category = Category.find(params[:id])
    respond_to do |format|
      format.js
    end
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
