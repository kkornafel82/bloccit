class FavoritesController < ApplicationController
 
  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
    authorize favorite
    if favorite.save
      flash[:notice] = "Post was marked as Favorite!"
      redirect_to [post.topic, post]
    else
      flash[:error] = "Error adding favorite"
      redirect_to [post.topic, post]
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])
    authorize favorite
    if favorite.destroy
       flash[:notice] = "Favorite was deleted successfully."
       redirect_to [post.topic, post]
     else
       flash[:error] = "There was an error deleting the favorite."
       redirect_to [post.topic, post]
     end
   end





end
