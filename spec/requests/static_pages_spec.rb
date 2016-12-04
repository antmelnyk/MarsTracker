require 'spec_helper'

describe "Перегляд статичних сторінок" do

  describe "Головна сторінка" do
    it "повинна відображати версію продукту" do
      visit root_path
      expect(page).to have_content('Версія проекту')
    end
  end

  describe "Перехід на реєстрацію" do
	it "повинен переходити по посиланню" do
		visit root_path
		click_link('register')
		page.has_content?('Логін')
	end
end
  
  describe "Відображення форми" do
it "форма має бути присутня для заповнення" do
		visit root_path
		click_link('register')
fill_in 'login', :with => 'testlogin'
fill_in 'password', :with => 'testpassword'
end
end

end
