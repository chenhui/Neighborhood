#encoding: utf-8
require 'spec_helper'

describe "Pages" do

  let(:base_title){"滨文苑"}

  subject {page}

  describe "Home page" do
    before {visit root_path}
    it { should have_selector('title',:text=>"#{base_title}")}
    it { should_not have_selector('title',:text=>'| 首页')}

    describe "for signed-in users" do
      let(:user){FactoryGirl.create(:user)}
      before do
        FactoryGirl.create(:micropost,user:user,content:"Lorem ipsum")
        FactoryGirl.create(:micropost,user:user,content:"hello world")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
         page.should have_selector("li##{item.id}",text:item.content) 
        end 
      end
      
    end
  end

  describe "contact page" do
    before { visit '/pages/contact'}
    it { should have_selector('h1',:text=>'Contact')}
    it { should have_selector('title',:text=>"#{base_title} | 联系我们")}
  end

  describe "about page" do
    before {visit '/pages/about'}
    it { should have_selector('h1',:text=>"About Us") }
    it { should have_selector('title',:text=>"#{base_title} | 关于滨文苑")}	
  end
end
