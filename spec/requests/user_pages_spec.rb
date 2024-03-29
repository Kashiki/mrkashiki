require 'spec_helper'

describe "UserPages" do
  subject { Page }
  
  describe "signup page" do
  	before { visit signup_path}

  	it { should have_selector('h1', text: 'Sign Up') }
  	it { should have_selector('title', text: 'Sign Up')}
    
  end

  describe "profile page" do
  	let(:user) { FactoryGirl.create(:user)}
  	before { visit signup_path}

  	it { should have_selector('h1', text: user.name) }
  	it { should have_selector('title', text: user.name)}
    
end
