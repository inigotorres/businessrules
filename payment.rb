class Payment
  attr_reader :type

  def initialize type
    @type = type
  end  

  def for_physical_item?
    true
  end

  def for_book?
    true if type == :book
  end
end
