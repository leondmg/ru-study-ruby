module Exercise
  module Arrays
    class << self
      def replace(array)
        max = find_max(array)
        array.map { |elem| elem.positive? ? max : elem }
      end

      def search(_array, _query)
        0
      end

      private

      def find_max(array)
        max = array[0]
        array.each { |elem| max = elem if elem > max }
        max
      end
    end
  end
end
