require 'spec_helper'

describe "StaticPages" do

  #$B$3$&$7$F$*$1$P(Bbase_title$B$H$$$&JQ?t$r;2>H$G$-$k(B
#  let(:base_title){"Rails Tutorial Sample"}


  describe "Home page" do
    it "should have the content 'Sample Ap'" do
      visit '/static_pages/home' #capybara$B$N(Bvisit$B5!G=(B
      expect(page).to have_content('Sample Ap') #capybara$B$N(Bpage$BJQ?t(B
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
