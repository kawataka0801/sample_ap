require 'spec_helper'

describe "StaticPages" do

  #こうしておけばbase_titleという変数を参照できる
#  let(:base_title){"Rails Tutorial Sample"}


  describe "Home page" do
    it "should have the content 'Sample Ap'" do
      visit '/static_pages/home' #capybaraのvisit機能
      expect(page).to have_content('Sample Ap') #capybaraのpage変数
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' | Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About")
    end
  end

end
