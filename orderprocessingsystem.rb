require_relative 'packingslip.rb'

class OrderProcessingSystem
  def process payment
   result = []
   if payment.for_physical_item?
     a_packing_slip = PackingSlip.new
     a_packing_slip.for_shipping = true
     result << a_packing_slip
   end
   
   if payment.for_book?
     another_packing_slip = PackingSlip.new
     another_packing_slip.for_royalty_department = true
     result << another_packing_slip
   end
   result
  end
end
