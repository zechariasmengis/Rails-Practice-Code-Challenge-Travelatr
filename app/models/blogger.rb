class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def total_likes
        self.posts.sum {|post| post.likes}
    end

    def featured_post
        self.posts.max {|post| post.likes}
    end

end
