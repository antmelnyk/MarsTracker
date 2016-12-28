require 'spec_helper'



describe "Перегляд статичних сторінок" do

  
	describe "Головна сторінка" do
    
		it "повинна відображати версію продукту" do
      
			visit root_path

			expect(page).to have_content('Версия проекта')
    
		end
  
	end

  
	describe "Перехід на статті" do

	  it "повинен відображати всі статті" do

		  visit root_path

		  click_link('articles-link')

      		  page.has_css?('table')
    
	  end

  	end



	describe "Опис проектів" do

	  it "повинен відображати статті з бази даних" do

		  visit root_path
      		  expect(page).to have_content('Басом Лансдорпом')
      		  expect(page).to have_content('Илоном Маском')      
	  end

  	end


end
