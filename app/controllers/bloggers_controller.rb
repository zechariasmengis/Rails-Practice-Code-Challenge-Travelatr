class BloggersController < ApplicationController

    def index
        @bloggers = Blogger.all
    end

    def show
        @blogger = Blogger.find(params[:id])
    end

    def new
        @blogger = Blogger.new
    end 

    def create
        @blogger = Blogger.new(params.require(:blogger).permit(:name, :bio, :age))
        if @blogger.valid?
            @blogger.save
            redirect_to blogger_path(@blogger)
        else
            #something with errors
            #@errors = @blogger.errors
            render :new
        end 


    end

end