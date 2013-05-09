require 'spec_helper'

describe "Pages" do
  describe "Home page" do
    it "should have the content 'sample App'" do
    	visit '/pages/home'
    	page.should  have_content('Sample App')
    end
  end

  describe "contact page" do
  	it "should have the context 'contact'" do
  		visit '/pages/contact'
  		page.should have_content('Contact')
  	end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/pages/about'
  		page.should have_content("About Us")
  	end

  end
end
