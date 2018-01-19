class Apartment
    def initialize
    end
    def evicted
        "We need a new tenant"
    end
end

class Tenant
    attr_accessor :name
    attr_reader :bills, :bank_account, :apartment
    def initialize(name, apartment)
        @name = name
        @income = 200
        @bank_account = 100
        @bills = 0
        @apartment = apartment
    end
    
    def pay_bills
      @bank_account = @bank_account - @bills
       if @bills > @bank_account
           @apartment.evicted
          "You couldn't pay your bills, you got evicted!"
        else
          @bills = 0 
          return "Thank you for paying your bill, you now owe #{@bills}. Your current Bank Balance is #{@bank_account}"
       end
    end
    
    def go_to_work
        @bank_account = @bank_account + @income
        @bills += rand(200)
        return "Your bills are piling up, you owe #{@bills}, REMEMBER TO PAY THEM!!"
    end
end
apartment_building = Apartment.new
alvin = Tenant.new("Alvin",apartment_building)
