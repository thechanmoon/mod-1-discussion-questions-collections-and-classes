# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require'pry'

class User
    
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def photos

        Photo.all.select do |photo|
            photo.user == self
        end
    end
end    

class Photo
    # attr_reader :user
    attr_accessor :comment, :user

    @@all = []

    # def initialize(comment=nil, user=nil)
    #     @comment = comment
    #     @user = user
    #     @@all << self
    # end

    def initialize()
        @@all << self
    end

    def self.all
        @@all
    end


    def name
        self.user.name 
    end

    def comments
        Comment.all.select do |comment|
            
            puts "comment.photo : "
            puts comment.photo
            puts "self of photo : "
            puts self

            comment.photo == self
        end
    end
    
    def make_comment(comment)
        Comment.new(comment, self)  
    end    
end

class Comment
    attr_reader :photo
    attr_accessor :comment
    @@all = []
    def initialize(comment,photo)
        @comment = comment
        @photo = photo
        @@all << self
    end
    
    def self.all
        @@all
    end  
end    

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
#=> "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
# => [#<Comment:0x00007fae28043700>]
binding.pry
