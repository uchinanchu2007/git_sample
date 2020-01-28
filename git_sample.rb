class User
  attr_accessor :name

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    text = ""
    if adult?
      text = "はじめまして、私の名前は#{@name}です。\n\n"
    else
      text = "ぼくは#{@name}だよ！！！\n\n"
    end

    text += "自己紹介おわり\n"
    text += "-------------------------"

    text
  end

  private

  def adult?
    @age >= 20
  end
end

def build_users(params)
  users = []
  params.each {|params| users << User.new(params)}

 users
end

params = [{name: "satou",age: 22}, {name: "taira", age: 12} , {name: "yamada", age: 99}]

users = build_users(params)

users.each {|user| puts user.introduce}
