# Refactor ruby code
# Author: hebinbin

# Sample 1
#   bad code

  def from_ipay?
    [:a, :b, :c,:d, :e, :f].each {|key|
      if params.keys.include?(key.to_s) == false
        return false
      end
    }

    return true
  end

#    good code
  def from_ipay?
    [:a, :b, :c,:d, :e, :f].all? do |key|
      params.keys.include?(key.to_s)
    end
  end


# how to use extend self in module
module Foo

  extend self

  def foo_method
    'foo_method'
  end

end

Foo.singleton_methods.grep(/foo_method/)   # => ["foo_method"]
Foo.instance_methods.grep(/foo_method/)    # => ["foo_method"]

Foo.foo_method                             # => "foo_method"


module Bar

  # extend self なし

  def bar_method
    'bar_method'
  end

end

Bar.singleton_methods.grep(/bar_method/)   # => []
Bar.instance_methods.grep(/bar_method/)    # => ["bar_method"]

Bar.bar_method                             # => undefined method `bar_method' for Bar:Module (NoMethodError)


