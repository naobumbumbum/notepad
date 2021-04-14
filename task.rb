require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "What i need to do?"
    @text = STDIN.gets.chomp

    puts "What date? Write date like DD.MM.YYYY, f. e. 23.09.1994"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Deadlin is #{@due_date}"

    return [deadline, @text, time_string]
  end
end