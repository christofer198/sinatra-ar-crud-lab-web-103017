#Placeholder for a model
class Post < ActiveRecord::Base

  attr_accessor :title, :blog
  def initialize(title, blog)
    @title = title
    @blog = blog
  end
  def self.create(title, blog)

  end

end
