require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
  	it "should have the h1 'Sample App'" do
  		visit '/static_pages/home'
  		expect(page).to have_selector('h1', :text => 'Sample App')
  	end

		it "should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).to_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_selector('h1', :text => 'Help')
  	end

  	it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end
  end

  describe "About page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_selector('h1', :text => 'About Us')
  	end

  	it "should have the title 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
  	end
  end

  describe "Contact" do
  	it "should have the h1 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_selector('h1', :text => 'Contact')
  	end

  	it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  	end
  end

end