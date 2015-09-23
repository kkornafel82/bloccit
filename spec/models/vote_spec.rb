require 'rails_helper'

describe Vote do

  include TestFactories
  
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

  describe 'after_save' do
    it "calls 'Post#update_rank' after save" do
      post = associated_post
      vote = Vote.new(value: 1, post: post)
      expect(post).to receive(:update_rank)
      vote.save
    end
  end
end

