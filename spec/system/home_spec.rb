require 'rails_helper'

RSpec.describe "Home", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "トップページ検証" do
    it 'Home#topが表示される' do
      visit '/'

      expect(page).to have_content 'Home#top'
    end
  end
end
