
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        quantity.times {self.items << title}
        self.total +=(price*quantity)
        self.last_transaction = price*quantity
    end

    def apply_discount
        discountAmt = (self.total * self.discount) / 100
        self.total -=discountAmt
        if discount > 0
            "After the discount, the total comes to $#{self.total}."
        elsif discount == 0
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end



end
