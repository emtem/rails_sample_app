require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "singup page" do
    before { visit signup_path }

    it { page.should have_selector('h1', :text => "Sign up") }
    it { page.should have_selector('title', :text => full_title('Sign up')) }
  end
end
