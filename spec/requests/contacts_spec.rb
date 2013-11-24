require 'spec_helper'

describe "Contacts" do
  describe "index" do
    it "should have title 'index'" do
      visit '/contacts/index'
      expect(page).to have_title('index')
    end
  end

end
