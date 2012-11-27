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
