# how to use define_method in ruby
#  define class method or singletion method
# first
class A
  class << self
    define_method :binbin do |message|
      message.upcase
    end
  end
end

A.binbin('hello')  # result is "BINBIN"

# second
class A
  define_singleton_method :loudly do |message|
    puts message.upcase
  end
end

A.loudly "my message"

# define instance method
class A
    define_method :binbin do |message|
      message.upcase
    end
end

A.new.binbin('hello')  # result is "BINBIN"

=begin
http://www.trottercashion.com/2011/02/08/rubys-define_method-method_missing-and-instance_eval.html
=end
