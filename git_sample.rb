class User
  attr_accessor :name

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    if @age > 20
      "はじめまして、私の名前は#{@name}です。"
    else
      "ぼくは#{@name}だよ！！！"
    end
  end
end

def build_users(params)
  users = []
  params.each do |params|
    users << User.new(params)
 end

 users
end

params = [{name: "satou",age: 22}, {name: "taira", age: 12} , {name: "yamada", age: 99}]

users = build_users(params)

users.each do |user|
    puts user.introduce
end
