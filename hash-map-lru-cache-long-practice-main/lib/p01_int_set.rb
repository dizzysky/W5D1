class MaxIntSet

  attr_reader :store
  def initialize(max)
    @store = Array.new(max) {false}
  end

  def insert(num)
    if num <= 50 && num >= 0
      @store[num] = true
    else 
      raise 'Out of bounds'
    end
    
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    if @store[num] == true 
      return true 
    else
      return false
    end
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end

class IntSet
  attr_reader :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store[num] = true

  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    if @store[num] == true 
      return true 
    else 
      return false
    end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count, :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if !@store[num_buckets % 20].include?(num)
      @store[num_buckets % 20] << num
    end
  end

  def remove(num)
  end

  def include?(num)
    return false unless @store[num] == true 
    return true
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end