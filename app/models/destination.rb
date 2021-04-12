class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def recent_posts
        #find last 5 posts
        @recent_posts = self.posts.last(5) 
    end 

    
end
