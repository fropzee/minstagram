class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:profile]
    def index
        @posts = Post.active
        @comment = Comment.new
        following_ids = Follower.where(follower_id: current_user.id).map(&:following_id)
        following_ids << current_user.id
        @all = User.where.not(id: following_ids)
    end

    def profile

    end 

    def follow_user
        follower_id = params[:follow_id]
        if Follower.create!(follower_id: current_user.id, following_id: follower_id)
            flash[:success] = "+"
        else
            flash[:danger] = "-"
        end

        redirect_to feeds_path
    end

    private

    def set_user
        @user = User.find_by_username(params[:username])
    end
end
