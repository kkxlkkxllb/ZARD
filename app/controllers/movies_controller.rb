class MoviesController < ApplicationController
  before_filter :require_user
  def index
    @title = "Manage movies"
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @title = "New Movie"
    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @movie }
    end
  end
  
  def create
    @movie = Movie.new(params[:movie])
    respond_to do |format|
      if @movie.save
        format.html { redirect_to zard_movies_path }
        format.xml  { render :xml => @movie, :status => :created, :location => @movie }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @movie = Movie.find(params[:id])
    @title = "Edit Movie"
  end
  
  def update
    @movie = Movie.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        format.html { redirect_to movies_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @movie.errors, :status => :unprocessable_entity }
      end
    end
  end
  

end
