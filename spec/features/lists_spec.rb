require 'rails_helper'

feature 'Brunch Lists' do
  scenario 'User can create a list of brunch places' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a brunch spot'
    fill_in 'Restaurant', with: 'Hopscotch'
    fill_in 'Rating', with: 5
    click_on 'Add brunch spot'
    expect(page).to have_content 'Hopscotch'
    expect(page).to have_content 5
  end

end