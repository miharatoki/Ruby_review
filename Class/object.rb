class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def self.full_name(first_name, last_name)
    p "#{first_name} #{last_name}"
  end

  def self.create_name(name)
    p "I am #{name}"
  end
end

# users = []
# users << User.new('Alice', 'Ruby', 20)
# users << User.new('Bob', 'Python', 30)


# users.each do |user|
#   p "氏名: #{user.full_name}, 年齢: #{user.age}"
# end

a = "Bob"
User.create_name(a)
b = "James"
User.full_name(a, b)