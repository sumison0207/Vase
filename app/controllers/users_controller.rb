class UsersController < ApplicationController
  
    def show
      @user = User.find(params[:id]) 
      if params[:search] == nil
        @tweets= Tweet.all.order(created_at: "DESC").page(params[:page]).per(6)
        elsif params[:search] == ''
        @tweets= Tweet.all.order(created_at: "DESC").page(params[:page]).per(6)
        else
        #部分検索
        @tweets = Tweet.where("body LIKE ? ",'%' + params[:search] + '%').order(created_at: "DESC").page(params[:page]).per(3)
        end
  end
end
