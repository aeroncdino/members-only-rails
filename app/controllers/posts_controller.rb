class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user = current_user

        if @post.save
            redirect_to posts_path, notice: 'Post was successfully created.'
          else
            render :new
          end

    end

    def index
        @post = Post.all 
    end

    private
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
