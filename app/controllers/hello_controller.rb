class HelloController < ApplicationController
    
    def link
    end
    def link_en
    end
    def log
    end
    def log_en
    end
    def post
    end
    def post_en
    end
    def my
    end
    def my_en
    end
    def article1
    end
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

    def show
    end

    def spring
        @tags = Tag.where(name: '春')
        @number = params[:tag_id].to_i

        @tweets = params[:tag_id].present? ? Tag.find(params[:tag_id]).tweets : Tweet.all

    end

    def summer
    end

    def autumn
    end

    def winter
    end
end
