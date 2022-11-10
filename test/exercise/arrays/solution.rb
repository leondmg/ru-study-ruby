module Exercise
  module Arrays
    class << self
      def replace(array)
        max = find_max(array)
        array.map { |elem| elem.positive? ? max : elem }
      end

      def search(array, query)
        return -1 if array.nil? || array.empty?

        if array.size == 1
          array[0] == query ? 0 : -1
        else
          binary_search(array, query, 0, array.size - 1)
        end
      end

      private

      def find_max(array)
        max = array[0]
        array.each { |elem| max = elem if elem > max }
        max
      end

      def binary_search(array, query, first, last)
        mid = first + ((last - first) / 2)
        if array[mid] < query
          first = mid + 1
        elsif array[mid] > query
          last = mid - 1
        else
          return mid
        end
        return -1 if first > last

        binary_search(array, query, first, last)
      end
    end
  end
end
