class PagesController < ApplicationController

  def home
  	@title="BingWen"
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
