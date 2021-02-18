class Cli 

  def prompt 
    TTY::Prompt.new
  end

  def start 
    puts "Welcome to our AR methods Cli app !"
    show_methods
  end

  def show_methods 
    methods = ['.where', '.find', '.find_by', '.take', '.order', '.pluck']
    selection = prompt.select("What method would you like to practice?", methods)
    run_method selection
  end

  def run_method method 
    case method 
      when '.where'
        puts 'Lets find all students whose age is over 25'
      when '.find'
        puts 'Lets find a student based on an id'
      when '.find_by'
        puts 'Lets find a student based on their last name'
      when '.take'
        puts 'Lets pick a random student'
      when '.order'
        puts 'Lets order students by first name'
      when '.pluck'
        puts 'List the first name of all students'
      else 
        puts "method doesn't exist"
    end
  end

end

