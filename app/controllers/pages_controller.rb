class PagesController < ApplicationController

  def home
  	@title="BingWen"
    if signed_in?
      @micropost=current_user.microposts.build 
      @feed_items=current_user.feed.paginate(page:params[:page])
    end
  end

  def contact
  	@title="contact"
  end

  def about
  	@title="About"
  end

  def  help
  	@title="Help"
  end
end
