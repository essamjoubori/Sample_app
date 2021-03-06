require 'spec_helper'

describe "LayoutLinks" do
	  
	  it "should have a Home page at '/' " do
	  	get '/'
	  	response.should have_selector('title', :key => "Home")
	  end

	  it "should have a Contact page at '/contact'" do
	  	get '/contact'
	  	response.should have_selector('title', :key => "Contact")
	  end

	  it "should have an About page at '/about'" do
	    get '/about'
	    response.should have_selector('title', :key => "About")
	  end

	   it "should have a Help page at '/help'" do
	    visit '/help'
        expect(page).to have_content('Help')
    end

	  end

  



