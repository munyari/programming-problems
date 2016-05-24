require 'pry'
class Array
  def accumulate(&block)
    result = []
    each do |elem|
      result << block.call(elem)
    end
    result
  end
end
