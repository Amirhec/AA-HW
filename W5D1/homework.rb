class LRUCache
    def initialize(length)
        @length = length
        @cache = []

    end

    def count

        @cache.length
  
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache.push(el)
        end
    
    end

    def show

        print @cache
     
    end

    private


  end