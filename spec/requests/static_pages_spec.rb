require 'spec_helper'

describe "StaticPages" do
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  subject { page }
  
  describe "Home page" do
    before { visit root_path }

    it { page.should have_selector('h1', :text => "Sample App") }
    it { page.should have_selector('title', :text => full_title('')) }
    it { page.should have_selector('title', :text => "| Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { page.should have_selector('h1', :text => "Help") }
    it { page.should have_selector('title', :text => full_title('')) }
    it { page.should have_selector('title', :text => "| Help") }
  end
  
  describe "About page" do
    before { visit help_path }
    
    it { page.should have_selector('h1', :text => "Help") }
    it { page.should have_selector('title', :text => full_title('')) }
    it { page.should have_selector('title', :text => "| Help") }
  end

  describe "Contact page" do
    before { visit contact_path }
    
    it { page.should have_selector('h1', :text => "Contact") }
    it { page.should have_selector('title', :text => full_title('')) }
    it { page.should have_selector('title', :text => "| Contact") }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    page.should have_selector 'title', text: full_title('Home')
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'title', text: full_title('Home')
    
  
  end
end
