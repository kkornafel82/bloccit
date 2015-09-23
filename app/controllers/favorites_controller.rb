class FavoritesController < ApplicationController
 
  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)

    if favorite.save
      flash[:notice] = "Post was marked as Favorite!"
      redirect_to [post.topic, post]
    else
      flash[:error] = "Error adding favorite"
      redirect_to [post.topic, post]
    end
  end
  




end
