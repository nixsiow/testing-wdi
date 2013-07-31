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

      it "should give the fruits in an instance variable in reverse order" do
        expect(assigns(:fruits)).to be
        expect(assigns(:fruits).length).to eq(3)
        expect(assigns(:fruits).first.class).to eq(Fruit)
        expect(assigns(:fruits).first.name).to eq("Fruit number 2")
      end

      it "should render the index template" do
        expect(response).to render_template("index")
      end
    end
  end
end
