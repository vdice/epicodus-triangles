require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangles path', {:type => :feature}) do
  it('accepts three side values and determines they do not form triangle') do
    visit('/')
    fill_in('side_one', :with => 1)
    fill_in('side_two', :with => 2)
    fill_in('side_three', :with => 3)
    click_button('Submit')
    expect(page).to have_content('The numbers you have entered do not form a triangle!')
  end
  it('accepts 3 side values and determines they do form a triangle, isosceles') do
    visit('/')
    fill_in('side_one', :with => 2)
    fill_in('side_two', :with => 2)
    fill_in('side_three', :with => 3)
    click_button('Submit')
    expect(page).to have_content('Your triangle is a isosceles')
  end
end
