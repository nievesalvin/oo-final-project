class Building
    def initialize
    end
end

class Tenant
    attr_accessor :name
    def initialize(name)
        @name = name
        @income = 200
        @bank_account = 100
        @bills = 0
    end
    
    def go_to_work(income)
        @bank_account = @bank_account + income
    end
    
    def pay_bills(bank_account)
        
    end
    
    def 
end