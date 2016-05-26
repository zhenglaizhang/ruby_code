class StockInStock

    attr_reader :isbn, :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end

    def isbn
        @isbn
    end

    def price
        @price
    end
end


class CsvReader

end


b1 = StockInStock.new('isbn1', 12.0)
p b1

b2 = StockInStock.new('isbn2', 16.3)
p b2

b3 = StockInStock.new('isbn3', '12.56')
p b3
print b3 
puts
puts b3