class PackingSlip
  attr_accessor :for_shipping, :for_royalty_department

  def initialize(options = {})
    @for_shipping = options[:for_shipping] || false
    @for_royalty_department = options[:for_royalty_department] ||false
  end

  def for_royalty_department?
    @for_royalty_department
  end

  def for_shipping?
    @for_shipping
  end
end
