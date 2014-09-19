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

  scenario 'User can update a restaurant from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a brunch spot'
    fill_in 'Restaurant', with: 'Hopscotch'
    fill_in 'Rating', with: 5
    click_on 'Add brunch spot'
    expect(page).to have_content 'Hopscotch'
    expect(page).to have_content 5
    click_on 'Hopscotch'
    expect(page).to have_content 'Hopscotch'
    expect(page).to have_content 5
    click_on 'Edit'
    fill_in 'Restaurant', with: 'Eats'
    fill_in 'Rating', with: 4
    click_on 'Update Restaurant'
    expect(page).to_not have_content 'Hopscotch'
    expect(page).to_not have_content 5
    expect(page).to have_content 'Eats'
    expect(page).to have_content 4
  end

  scenario 'User can delete a restaurant from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a brunch spot'
    fill_in 'Restaurant', with: 'Hopscotch'
    fill_in 'Rating', with: 5
    click_on 'Add brunch spot'
    expect(page).to have_content 'Hopscotch'
    expect(page).to have_content 5
    click_on 'Hopscotch'
    expect(page).to have_content 'Hopscotch'
    expect(page).to have_content 5
    click_on 'Delete'
    expect(page).to_not have_content 'Hopscotch'
    expect(page).to_not have_content 5
  end

end