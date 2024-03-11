require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #index' do
    let!(:parana) { create(:state, name: 'Paraná') }
    let!(:curitiba) { create(:city, name: 'Curitiba', state: parana) }
    let!(:londrina) { create(:city, name: 'Londrina', state: parana) }

    let!(:santa_catarina) { create(:state, name: 'Santa Catarina') }
    let!(:florianopolis) { create(:city, name: 'Florianópolis', state: santa_catarina) }

    it 'returns cities based on Ransack parameters' do
      get :index, params: { q: { state_name_eq: 'Paraná', name_cont: 'Cur' } }
      expect(assigns(:cities)).to include(curitiba)
      expect(assigns(:cities)).not_to include(londrina, florianopolis)
    end

    it 'returns all cities when no Ransack parameters are provided' do
      get :index
      expect(assigns(:cities)).to include(curitiba, londrina, florianopolis)
    end
  end
end