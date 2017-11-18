require 'rails_helper'

RSpec.describe "Review Routes", :type => :routing do
  it "routes / to review#index" do
    expect(:get => "/").to route_to(
      :controller => "reviews",
      :action => "index")
  end

end
