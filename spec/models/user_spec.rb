 require 'rails_helper'
 
 describe User do
 
   include TestFactories

   before do 
    @user = authenticated_user
    @post = associated_post
    @other_user = authenticated_user
    @favorite = Favorite.create(post: @post, user: @user)
  end

 
   describe "#favorited(post)" do
     
     it "returns `nil` if the user has not favorited the post" do
       expect( @other_user.favorited(@post) ).to eq(nil)
     end
 
     it "returns the appropriate favorite if it exists" do
       expect( @user.favorited(@post) ).to eq(@favorite)
     end
   end
end
