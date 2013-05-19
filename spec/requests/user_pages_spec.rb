#encoding:utf-8
require 'spec_helper'

describe "UserPages" do
  subject{page}

  describe "User pages" do
  	before{visit users_signup_path}
  	it {should have_selector('h1',text:'Sign up')}
  	it {should have_selector('title',text:"滨文苑 | Sign up") }
  end
end
