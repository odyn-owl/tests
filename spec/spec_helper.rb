Dir[File.dirname(__FILE__) + "/../lib/*.rb"].each { |f| require f }

module AppleSpecHelper
  def create_new_apple
    @apple = Apple.new()
  end
end

