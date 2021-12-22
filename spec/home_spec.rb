require 'rails_helper'

RSpec.describe 'Home', type: :system do
  describe 'about page' do
    it 'shows the right content' do
      visit about_path
      expect(page).to have_content('About us My name is..')
    end
  end
end