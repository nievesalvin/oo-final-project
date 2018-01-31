class Apartment
    def initialize
    end
    def evicted
        "That other guy couldn't pay the bills. We need a new tenant"
    end
end

class Tenant
    attr_accessor :name
    attr_reader :bills, :bank_account, :apartment #this allows bills, bank account, and apartment to be read and not changed 
    def initialize(name, apartment) #a tenant can not be created if it does not have a name or an apartment
        @name = name
        @income = 200
        @bank_account = 100
        @bills = 0
        @apartment = apartment
    end
    
    def pay_bills #this allows the user to pay their bills 
      @bank_account = @bank_account - @bills #new bank account is equal to their old bank account minus the bills they pay
       if @bills > @bank_account #if the bills are more than the balance of your bank account then you will get evicted
          @apartment.evicted
        else
          @bills = 0 # if your bank account is more than you pay your bills, and your balance is updated
          return "Thank you for paying your bill, you now owe #{@bills}. Your current Bank Balance is #{@bank_account}"
       end
    end
    
    def go_to_work #allows the user to generate income when they go to work, but it also generates a bill
        @bank_account = @bank_account + @income
        @bills += rand(350) #sets bills equal to a random number between 0-3
        return "Your bills are piling up, you owe #{@bills}, REMEMBER TO PAY THEM!!"
    end
end
apartment_building = Apartment.new
alvin = Tenant.new("Alvin",apartment_building)
