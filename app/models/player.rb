class Player
    attr_reader :name, :stack

    def initialize(name, initial_stack)
        @name = name
        @stack = initial_stack
    end

    def deposit(chips)
        @stack += chips
    end

    def debit(chips)
        raise "Not enough chips." if chips > @stack
        @stack -= chips
    end

    def print
        @name + " " + @stack.to_s
    end

    def json
        {
            name: @name,
            stack: @stack
        }
    end
end