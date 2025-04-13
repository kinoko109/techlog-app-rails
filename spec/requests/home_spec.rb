require 'rails_helper'

RSpec.describe "Home", type: :request do # test対象モジュールとテストの種類
  describe 'GET /' do
    it 'HTTP ステータス 200 を返す' do
      get '/'
      expect(response).to have_http_status(200)
    end
  end
end
