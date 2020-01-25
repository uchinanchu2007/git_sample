class User
  attr_accessor :name

  def initialize(**params)
    @name = params[:name]
  end
end

def build_users(names)
  users = []
  names.each do |name|
    users << User.new(name: name)
 end

 users
end

names = ["satou", "taira", "yamada"]

users = build_users(names)

users.each do |user|
    puts user.name
end
