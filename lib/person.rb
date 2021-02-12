class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name, @bank_account, @happiness, @hygiene = name, bank_account, happiness, hygiene
    end

    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness
    end

    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end 
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins" 
    end
   
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
   
    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end 
   
    def call_friend(person_instance)
        self.happiness += 3
        person_instance.happiness += 3
        "Hi #{person_instance.name}! It's #{self.name}. How are you?"
    end
   
    def start_conversation(person, topic)
        if topic == "politics"
             self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
