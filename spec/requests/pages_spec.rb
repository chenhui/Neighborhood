require 'spec_helper'

describe "Pages" do

  let(:base_title){"BingWen"}

  describe "Home page" do
    it "should have the content 'sample App'" do
    	visit '/pages/home'
    	page.should  have_selector('h1',:text=>'Sample App')
    end

    it "should have the base title" do
      visit '/pages/home'
      page.should have_selector('title',
        :text=>"#{base_title}")
    end

    it "should not have a custome page title" do
      visit '/pages/home'
      page.should_not have_selector('title',:text=>'| Home')
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
        :text=>"#{base_title} | Contact")
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
        :text=>"#{base_title} | About")
    end
  end
end
