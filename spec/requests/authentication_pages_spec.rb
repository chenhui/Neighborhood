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
			before{ sign_in  user}

			it{should have_selector('title',text:user.name)}
			it{should have_link('个人中心',href:user_path(user))}
			it{should have_link('注销',href:signout_path)}
			it{should_not have_link('Sign in',href:signin_path)}
			it {should have_link('设置',href:edit_user_path)}

			describe "followed by signout" do
				before{ click_link  "注销"}
				it { should have_link('登陆')}
			end

		end 

	end

	describe "authorization" do

		describe "for non-signed-in users" do
			let(:user){FactoryGirl.create(:user)}

			describe "in the Users controller" do

				describe "visiting the edit page" do
					before{ visit edit_user_path(user)}
					it {should have_selector('title',text:'Sign in')}
				end

				describe "submitting to the update action" do
					before{put  user_path(user)}
					specify{response.should  redirect_to(signin_path)}
				end

			end

		end

		describe "as wrong user" do
			let(:user){FactoryGirl.create(:user)}
			let(:wrong_user){FactoryGirl.create(:user,email:"wrong@example.com")}
			before{ sign_in  user}
			
			describe "visiting Users#edit page"	do
				before{visit  edit_user_path(wrong_user)}
				it{should_not  have_selector('title',text: 'Edit user')}
			end

			describe "submitting a PUT requests to the Users#update action" do
				before{put user_path(wrong_user)}
				specify{response.should  redirect_to(root_path)}
			end
		end

		describe "for non-signed-in users" do
			let(:user){FactoryGirl.create(:user)}

			describe  "when attempting to visti a protected page" do
				before do
					visit edit_user_path(user)
					fill_in  "Email",with:user.email
					fill_in  "Password",with:user.password
					click_button  "Sign in"
				end

				describe "after signing in" do
					it "should render the desired protected page" do
						page.should have_selector('title',text:"Edit user")
					end
				end


			end
		end


			
	end
end
