require './app'

def main
	app = App.new()
	puts "Welcome to School Library App!"
	loop do
		app.choose_task
		input = gets.chomp.to_i
		if input == 7
			puts "Thank you for using this app!"
			break
		end
		app.do_task(input)
	end	
end

main()