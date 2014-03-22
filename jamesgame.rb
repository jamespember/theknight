class Character
	def initialize(name)
		@name = name
        @x = 0
        @y = 1
        @health = 100
    end

    attr_accessor :x
    attr_accessor :y
    attr_accessor :health

    def printStatus() 
    	puts ""
    	puts "-----------"
    	puts @name
    	puts @x
    	puts @y
    	puts @health
    	puts "-----------"
    	puts ""
    end

    def moveUp()
    	@y += 1
		puts "You took a step up!"
    end

    def attack()
    	#TODO: The players must be at least on one of the same axis to attack.
		@health -= 10
		puts "Boom, that one hurt him!"
	end

	def fendOffAttack()
		@health -= 1 #It takes energy to fend off an attacker :)
	end

	def lowHpMsg()
		puts "Uh oh, it's going low!"
	end

end


player = Character.new("James the Knight")
enemy = Character.new("Robin the Foul")
enemy.y = 2


system "clear" or system "cls"

command = ""
while true
	if command == "fight"
		enemy.attack()
	elsif command == "move up"
		player.moveUp()
	end

	player.printStatus()
	enemy.printStatus()

	puts "Enter your command"	
	command = gets.chomp
	
	# optional is to clear the prompt
	system "clear" or system "cls"
end