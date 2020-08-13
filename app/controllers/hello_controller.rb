class HelloController < ApplicationController
    
    def link
    end
    def log
    end
    def post
    end
    def my
    end
    def index
        

        
        if params[:search] == nil
        @tweets= Tweet.all.page(params[:page]).per(3)
        elsif params[:search] == ''
        @tweets= Tweet.all.page(params[:page]).per(3)
        else
        #部分検索
        @tweets = Tweet.where("body LIKE ? ",'%' + params[:search] + '%').page(params[:page]).per(3)
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
