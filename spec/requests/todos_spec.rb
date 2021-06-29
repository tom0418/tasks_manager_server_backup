# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Todos', type: :request do
  let!(:todos) { create_list(:todo, 10) }

  describe 'GET /index' do
    before { get todos_path }

    it 'returns status code 200' do
      expect(response).to(have_http_status(:ok))
      expect(JSON.parse(response.body).size).to(eq(todos.size))
    end
  end
end
