require 'rails_helper'

describe Vote do
  describe "validations" do
    before do
       @good_vote = Vote.new(value: 1)
       @bad_vote = Vote.new(value: -1)
       @invalid_vote = Vote.new(value:  2)
    end
    
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect(@good_vote.valid?).to eq(true)
        expect(@bad_vote.valid?).to eq(true)
        expect(@invalid_vote.valid?).to eq(false)
      end
    end
  end
end