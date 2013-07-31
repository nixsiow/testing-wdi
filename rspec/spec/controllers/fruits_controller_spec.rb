require 'spec_helper'

describe FruitsController do
  describe 'GET for index' do
    before do
      3.times { |i| Fruit.create(:name => "Fruit number #{i}") }
    end

    describe 'as HTML' do
      before do
        get :index
      end

      it "should respond with a status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end
  end
end
