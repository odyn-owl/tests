class Apple

  @@apple_count = 0

  attr_reader :color, :age, :size
  
  def self.report
    puts "Count of apples - #{@@apple_count}"
  end

  def initialize(color='green', age=0, taste='yuck')
    @color, @age, @taste = color, age, taste
    @size = 0

    @@apple_count += 1
  end

  def grow(add_time=1)
    @age += add_time
  end

  def ready?
    false
  end

  def to_s
    "apple #{@color}"
  end  

end
