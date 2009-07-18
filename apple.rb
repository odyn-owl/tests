class Apple

    @@apple_count = 0

    attr_reader :color, :age, :size
    
  def initialize
    @color = 'green'
    @age, @size = 0, 0
    @taste = 'yuck'

    @@apple_count +=1
  end

  def grow(add_time)
    @age += add_time
  end

  def ready?
    false
  end

  def to_s
    "apple #{@color}"
  end

  def self.report
    puts "Count of apples - #{@@apple_count}"
  end

end
