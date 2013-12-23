require 'spec_helper'

describe "Energies", js: true  do
  context 'when visit energies' do
    it 'works' do
      visit root_path
      expect(page).to have_css('h1', text: 'Energies')
      click_link 'Add new'
      expect(page).to have_field('Name')
      fill_in 'Name', with: 'test_user1'
      click_button 'Create Energy'
      expect(page).to have_css('a', text: 'test_user1')
    end
  end
end
