class BST
    attr_accessor :data, :left, :right

    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end

    def insert(n)
        if n <= @data
            @left.nil? ? @left = BST.new(n) : @left.insert(n)
        elsif n > @data
            @right.nil? ? @right = BST.new(n) : @right.insert(n)
        end
    end

    def each(&block)
        if left
            left.each(&block)
        end
        yield data
        if right
            right.each(&block)
        end
    end

end