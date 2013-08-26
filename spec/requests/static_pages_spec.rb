require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Cetifarma'" do
      visit '/static_pages/home'
      expect(page).to have_content('Cetifarma')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Cetifarma | Home")
    end
  end

  describe "Codigo page" do

    it "should have the content 'Código'" do
      visit '/static_pages/codigo'
      expect(page).to have_content('Código')
    end

    it "should have the title 'Código'" do
      visit '/static_pages/codigo'
      expect(page).to have_title("Cetifarma | Código")
    end
  end

end