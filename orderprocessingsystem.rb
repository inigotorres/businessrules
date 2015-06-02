require_relative 'packingslip.rb'

class OrderProcessingSystem
  def process payment
   result = []

   result << PackingSlip.new(for_shipping: true) if payment.for_physical_item?
   result << PackingSlip.new(for_royalty_department: true) if payment.for_book? 
   result
  end
end
