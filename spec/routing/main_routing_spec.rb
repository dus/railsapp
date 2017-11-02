require "rails_helper"

RSpec.describe "Misc", type: :routing do
  describe "routing" do

    it "routes root to post#index" do
      expect(:get => "/").to route_to("posts#index")
    end

  end
end
