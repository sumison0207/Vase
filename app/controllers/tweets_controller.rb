    class TweetsController < ApplicationController
    
        before_action :authenticate_user!
        
        def index
          if params[:search] == nil
          @tweets= Tweet.all.order(created_at: "DESC").page(params[:page]).per(6)
          elsif params[:search] == ''
          @tweets= Tweet.all.order(created_at: "DESC").page(params[:page]).per(6)
          else
          #部分検索
          @tweets = Tweet.where("body LIKE ? ",'%' + params[:search] + '%').order(created_at: "DESC").page(params[:page]).per(3)
          end
        end
  
      
  
      def new
          @tweet = Tweet.new
          
      end
  
      def create
          @tweet = Tweet.new(tweet_params)
          @tweet.user_id = current_user.id
          if @tweet.save
            redirect_to :action => "index"
          else
            redirect_to :action => "new"
          end
         
      end
  
      def show
        @tweet = Tweet.find(params[:id])
        @like = Like.new
        @comments = @tweet.comments
        #@comment = Comment.new
        @comment = @tweet.comments.build
      end
  
      def edit
        @tweet = Tweet.find(params[:id])
       
      end
        
      def update
        @tweet = Tweet.find(params[:id])
        if @tweet.update(tweet_params)
          redirect_to :action => "show", :id => @tweet.id
        else
          redirect_to :action => "new"
        end
      end
  
      def destroy
        Tweet.find(params[:id]).destroy
       redirect_to action: :index
      end
      
     
  
      private
      def tweet_params
          params.require(:tweet).permit(:user_id, :body, :title, :material, :image, tag_ids: [])  
      end
    end
