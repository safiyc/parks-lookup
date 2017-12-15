require 'rails_helper'

describe 'Parks-Lookup API', :type => :request do
  # initialize test data
  # 'let' is rspec helper allowing value of :park to save across each describe block
  let!(:parks) { FactoryBot.create_list(:park, 10) }
  let(:park_id) { parks.first.id }

  #  test suite for GET /parks
  describe 'GET /parks' do
    # make HTTP get request before each example
    before { get '/parks' }

    it 'returns parks' do
      # Note 'json' is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      # test to see if API returns correct header
      expect(response).to have_http_status(:success)
    end
  end

  # test suite for GET /parks/:id
  describe 'GET /parks/:id' do
    before { get "/parks/#{park_id}" }

    context 'when the record exists' do
      it 'returns the park' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(park_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:park_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Park/)
      end
    end
  end

end
