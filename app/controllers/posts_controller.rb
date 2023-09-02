class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]


    def new
        @posts = Post.new
    end

    def create
         @posts = current_user.posts.build(post_params)

        if @posts.save
            redirect_to posts_path, notice: 'Post was successfully created.'
        else
            render :new
        end
    end

    def index
        @posts = Post.all 
    end

    private
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
