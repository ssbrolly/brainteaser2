
@string = []

def welcome
  puts "------Welcome to Palindrome-----"
  puts "Please input to check if its a Palindrome"
  input = gets.strip.to_s
  @string << input
  palindrome?
end


  def palindrome?(string)
    if @string.length == 1 || string.length == 0
      true
    else
      if string[0] == string[-1]
        palindrome?(string[1..-2])
      else
        false
      end
    end
  end

  welcome


# def menu
#   puts
#   puts "-------------PALINDROME CHECKER-------------"
#   puts
#   puts 'Type out your best example of a palindrome!'
#   @palindrome = []
#   input = gets.strip.to_s
#   check(input)
# end
  
# def check(input)
#   puts
#   puts "Running the palindrome checker..."
#   puts
#   input.each_char do |char|
#     @palindrome << char
#   end
#   @palindrome.each_with_index do |char, i|
#     if char != @palindrome[@palindrome.length - (i + 1)]
#       puts "#{input} is not a palindrome. Try again."
#       menu
#     end
#   end
#   puts "NICE! #{input} is a palindrome!"
#   menu
# end
# menu