

class BST
  attr_accessor :data, :left, :right

  def initialize( data )
      @data = data
      @left = nil
      @right = nil
    end

    def insert(new_data)
      if new_data <= @data
        @left.nil? ? @left = BST.new( new_data ) : @left.insert( new_data )
      elsif new_data > @data
        @right.nil? ? @right = BST.new( new_data ) : @right.insert( new_data )
      end
    end
    # def record_all_data(bst)
    #   all_data = []
    #   bst.each { |data| all_data << data }
    #   all_data
    # end
    def each(&callback)
      left.each(&callback) if left
      callback.call(data)
      right.each(&callback) if right
    end
end
