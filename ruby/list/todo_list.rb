class TodoList
    def initialize(array)
        @list = array
        @list
    end
    def add_item (item)
        @list << item
    end
    def delete_item (item)
        @list.delete(item)
    end
    def get_items()
        @list
    end
    def get_item(integer)
        @list[integer]
    end
end