class Person
  attr_accessor :username, :followers

  def initialize(username)
    @username = username
    @followers = Array.new
  end

  def add_follower(person)
    @followers << person
  end

  def remove_follower(person)
    @followers.delete(person)
  end

  def to_s
    result = "@#{@username} --> [#{@followers.size}]"
    @followers.each {|f| result = result + " #{f.username}" }
    result
  end
end
