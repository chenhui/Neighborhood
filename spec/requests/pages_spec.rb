#encoding: utf-8
require 'spec_helper'

describe "Pages" do

  let(:base_title){"滨文苑"}

  subject {page}

  describe "Home page" do
    before {visit root_path}
    it { should have_selector('title',:text=>"#{base_title}")}
    it { should_not have_selector('title',:text=>'| 首页')}
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
