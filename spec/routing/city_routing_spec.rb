require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #index' do
    let!(:parana) { create(:state, name: 'Paraná') }
    let!(:curitiba) { create(:city, name: 'Curitiba', state: parana) }
    let!(:londrina) { create(:city, name: 'Londrina', state: parana) }

    let!(:santa_catarina) { create(:state, name: 'Santa Catarina') }
    let!(:florianopolis) { create(:city, name: 'Florianópolis', state: santa_catarina) }

    it 'returns a successful response for the search route' do
      get :index, params: { q: { state_name_eq: 'Paraná', name_cont: 'Cur' } }
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      get :index, params: { q: { state_name_eq: 'Paraná', name_cont: 'Cur' } }
      expect(response).to render_template(:index)
    end
  end
end