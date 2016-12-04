require 'spec_helper'

describe "Перегляд статичних сторінок" do

  describe "Головна сторінка" do
    it "повинна відображати версію продукту" do
      visit root_path
      expect(page).to have_content('Версія проекту')
    end
  end

end
