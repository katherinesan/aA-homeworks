class Queue

  def initialize
    @i = []
  end

  def enqueue(el)
    @i.unshift(el)
  end

  def dequeue
    @i.pop
  end

  def peek
    @i.last
  end

end
