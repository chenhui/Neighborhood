#encoding:utf-8
require 'spec_helper'


describe "LayoutLinks" do

	subject {page}

	before { visit root_path }
	it { should have_selector('title',text:"滨文苑")}

	before { visit pages_contact_path }
	it { should have_selector('title',content:"滨文苑 | 联系我们")}
	
	before { visit pages_about_path }
	it { should have_selector('title',content:"About") } 

	before { visit pages_help_path }
	it { should have_selector('title',content:"Help") }
	
end
