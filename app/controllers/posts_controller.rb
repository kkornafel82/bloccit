class PostsController < ApplicationController

  

  #def markdown_title
   # render_as_markdown(markdown)
  #end

  #def markdown_body
   # @post = Post.find(params[:id])
    #render_as_markdown(@post)
  #end


  def show
    @post = Post.find(params[:id])
    @topic = Topic.find(params[:topic_id])
    authorize @post
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
    authorize @post
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.new(post_params)
    @post.user = current_user
    @post.topic = @topic 
    authorize @post
    if @post.save
      flash[:notice] = "Post was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
   @topic = Topic.find(params[:topic_id])
   @post = Post.find(params[:id])
   authorize @post
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @post = Post.new(post_params)
    authorize @post
    if @post.update_attributes(params.require(:post).permit(:title, :body))
      flash[:notice] = "Post was updated."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :edit
    end

    
  end


  private

  def render_as_markdown
    markdown_to_html
    end

  def post_params
   params.require(:post).permit(:title, :body)
  end

  

  

end











