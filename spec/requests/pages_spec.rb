require 'spec_helper'

describe "Pages" do
  describe "Home page" do
    it "should have the content 'sample App'" do
    	visit '/pages/home'
    	page.should  have_selector('h1',:text=>'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector('title',
        :text=>"BingWen | Home")
    end
  end

  describe "contact page" do
  	it "should have the context 'contact'" do
  		visit '/pages/contact'
  		page.should have_selector('h1',:text=>'Contact')
  	end


    it "should have the title 'Contact'" do
      visit '/pages/contact'
      page.should have_selector('title',
        :text=>"BingWen | Contact")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/pages/about'
  		page.should have_selector('h1',:text=>"About Us")
  	end


    it "should have the title 'About'" do
      visit '/pages/about'
      page.should have_selector('title',
        :text=>"BingWen | About")
    end
  end
end
