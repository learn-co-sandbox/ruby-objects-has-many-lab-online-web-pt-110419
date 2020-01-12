class Post

  attr_accessor :title
  @@all = []
  
  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self 
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
  
  def author
    @author
  end 
  
  def author=(author)
    @author = author
    @author # << author
  end
  
  def self.all 
    @@all
  end 
end