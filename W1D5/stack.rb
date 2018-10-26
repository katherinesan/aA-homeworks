class Stack

  def initialize
   @i = []
  end

  def push(el)
    @i << el
  end

  def pop
    @i.pop
  end

  def peek
    @i.last
  end

end
