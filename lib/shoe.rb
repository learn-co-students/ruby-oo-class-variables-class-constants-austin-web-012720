class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    
    if !(BRANDS.include? brand)
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(new_brand)
    @brand = new_brand
    BRANDS << new_brand
  end
end