require 'rails_helper'
require 'date'

RSpec.describe Review, type: :model do
    @reviewDate=Date.today
    it "able to add review" do
        hitch = Review.create(title: "Hitch", email: "j@example.com", rating: "4", reviewDate: :reviewDate)
        expect(Review.find_by_title("Hitch").title).to eq("Hitch")
    end


end
