class Map
attr_reader :dictionary

  def initialize
    @dictionary = []
  end

  def set(key, value)
    index_of_key = nil
    if get(key).nil?
      @dictionary << [key,value]
    else
      @dictionary.each_with_index do |el, idx|
        index_of_key = idx if el[0] == key
      end
      @dictionary[index_of_key][1] = value
    end
  end

  def get(key)
    index_of_key = nil
    @dictionary.each_with_index do |el, idx|
      index_of_key = idx if el[0] == key
    end
    if index_of_key == nil
      return nil
    end
    @dictionary[index_of_key][1]
  end

  def delete(key)
    index_of_key = nil
    @dictionary.each_with_index do |el, idx|
      index_of_key = idx if el[0] == key
    end
    if index_of_key == nil
      puts 'This is not a valid key!'
      return
    end
    @dictionary.delete_at(index_of_key)
  end

  def show
    @dictionary
  end

end
