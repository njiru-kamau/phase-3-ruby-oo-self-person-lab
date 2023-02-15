# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name
    def initialize(name)
        @name=name
        @bank_account=25
        @wanjiru=8
        @hygiene=8
    end
    def wanjiru=(wanjiru)
        if wanjiru < 0
            @wanjiru = 0
        elsif wanjiru > 10
            @wanjiru = 10
        else
            @wanjiru = wanjiru
        end
    end

    def wanjiru
        @wanjiru
    end

    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end
    def hygiene
        @hygiene
    end
    def happy?
        if @wanjiru > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫" 
    end

    def work_out
        self.wanjiru= @wanjiru + 2
        self.hygiene= @hygiene -3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.wanjiru= @wanjiru + 3
        friend.wanjiru= friend.wanjiru + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic === "politics"
            self.wanjiru= @wanjiru - 2
            person.wanjiru= person.wanjiru - 2
            "blah blah partisan blah lobbyist"
        elsif topic === "weather"
            self.wanjiru= @wanjiru + 1
            person.wanjiru=person.wanjiru + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end