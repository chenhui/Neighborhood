#encoding: utf-8
require 'spec_helper'

describe "Authentication" do
	subject{page}

	describe "signin page" do
		before{visit signin_path}
		it {should have_selector('h1',text:'Sign in')}
		it {should have_selector('title',text:'Sign in')}
	end

	describe "signin" do

		describe "with invalid information" do
			before do
				visit signin_path
				click_button "Sign in"
			end
			it{should have_selector('title',text:'Sign in')}
			it{should have_selector('div.alert.alert-error',text:'Invalid')}
		end

		describe "with valid information" do
			let(:user){FactoryGirl.create(:user)}
			before do
				visit signin_path
				fill_in "Email" ,with:user.email.upcase
				fill_in "Password",with:user.password
				click_button  "Sign in"
			end

			it{should have_selector('title',text:user.name)}
			it{should have_link('个人中心',href:user_path(user))}
			it{should have_link('注销',href:signout_path)}
			it{should_not have_link('Sign in',href:signin_path)}

			describe "followed by signout" do
				before{ click_link  "注销"}
				it { should have_link('登陆')}
			end

		end 

	end

end
