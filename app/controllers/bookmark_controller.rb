class BookmarkController < ApplicationController
  
  def index
  	
  	@bookmark = Bookmark.all #Bookmark Model
  	respond_to do |format|
  		format.html
  		format.json { render json: @bookmark }
  	end
  end

  def create
  	@bookmark = Bookmark.new(params[:post])
  	respond_to do |format|
  		if @bookmark.save
  			format.html { redirect_to @bookmark, notice: "Bookmark Added" }
  			format.json { render json: @bookmark, status: :created, location: @bookmark } 
  		else
  			format.html { render action: "new" }
        	format.json { render json: @bookmark.errors, status: :unprocessable_entity }
        end
  	end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end
  
  def update
  	
  	@bookmark = Bookmark.find(params[:id])
  	
  	respond_to do |format|
		if @bookmark.update_attributes(params[:id])
			format.html { redirect_to @bookmark, notice: "Updated" }
			format.json { render json: @bookmark, status: :created, location: @bookmark } 
		else
			format.html { render action: "edit" }
			format.json { render json: @bookmark.errors, status: :unprocessable_entity }
		end
  	end
  end

  def destroy
  	
  	@bookmark = Bookmark.find(params[:id])
  	@bookmark.destroy
  	
  	respond_to do |format|
      format.html { redirect_to :action => index }
      format.json { head :no_content }
    end
  end
  
end
