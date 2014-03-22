#The Knight.

#TODO:
#1. Make the game "turn based"
#2. Plot the positions of the players somehow


class Character
	def initialize(name)
		@name = name
        @x = 1
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

    #def plotPosition()
    	#TODO: Plot position of both players somehow.
    #end

    def moveUp()
    	@y += 1
		puts "You took a step up!"
    end

    def moveDown()
    	@y -= 1
    	puts "You took a step down"
    end

    def moveLeft()
    	@x -=1
    	puts "you went left"
    end

    def moveRight()
    	@x +=1
    	puts "you went right"
    end

    def attack()
    	#TODO: The players must be at least on one of the same axis to attack.
		@health -= 10
		puts "Boom, that one hurt him!"
	end

	def fightEnergyLoss() #It takes energy to fend off an attacker :)
		@health -= 1 
	end

	def lowHpMsg()
		puts "Uh oh, it's going low!"
	end

	#TODO: These functions are works in progress and not very good

	def switchTurn()
		puts ""
		puts "-----------"
		puts "The last player to play was: "
		puts @name
		puts "-----------"
		puts ""
		currentTurn() #todo: pass the current player name into the currentTurn function and update the currentTurn variable
	end

	def currentTurn()
		currentTurn = @name
		return currentTurn
	end
	
	#These functions are works in progress and not very good

end


player = Character.new("James the Knight")
enemy = Character.new("Robin the Foul")
enemy.y = 2


system "clear" or system "cls"

command = ""
while true
	
	puts "Welcome to The Knight!"
	puts "You can 'fight', 'move up', 'move down', 'move left' or 'move right'"

	if command == "fight"
		if currentTurn != "James The Knight"
			enemy.attack() 
			player.fightEnergyLoss() 
			player.switchTurn()	
		else
			puts "It's not your turn!!!!"
		end

	elsif command == "move up"
		player.moveUp()
	elsif command == "move left"
		player.moveLeft()
	elsif command == "move down"
		player.moveDown()	
	elsif command == "move right"
		player.moveRight()
	end

	player.printStatus()
	enemy.printStatus()

	puts "Enter your command"	
	command = gets.chomp
	
	# optional is to clear the prompt
	system "clear" or system "cls"
end