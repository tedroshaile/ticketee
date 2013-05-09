require 'spec_helper'


feature "Deleting Projects" do 
	before do
		Factory(:project, :name => "TextMate 2")
		visit "/"
		click_link "TextMate 2"
		click_link "Delete Project"
	end 
	scenario "Deleting a project" do
		page.should have_content ("Project has been deleted.")

		visit '/'
		page.should_not have_content("TextMate 2")
	end
	
end