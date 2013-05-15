require 'spec_helper'

describe "LayoutLinks" do

    subject {page}

    before { visit root_path }
    it { should have_selector('title',text:"BingWen")}

    before { visit pages_contact_path }
    it { should have_selector('title',content:"BingWen | Contact")}
	
	before { visit pages_about_path }
	it { should have_selector('title',content:"About") } 

	before { visit pages_help_path }
	it { should have_selector('title',content:"Help") }
	
end
