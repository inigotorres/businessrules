require './orderprocessingsystem.rb'
require './payment.rb'

describe "An order processing system" do
  before do
    @ops = OrderProcessingSystem.new()
  end

  context "when paying for a physical product" do
    it "generates a packing slip for shipping" do
      a_payment = Payment.new(:physical)
      results = @ops.process(a_payment)
      expect(results.any? {|result| result.is_a?(PackingSlip) && result.for_shipping?}).to be true
    end

    context "and the product is a book" do
      it "generates a duplicate packing slip for royalty department" do
        a_payment = Payment.new(:book)
        results = @ops.process(a_payment) 
        expect(results.any? {|result| result.is_a?(PackingSlip) && result.for_shipping?}).to be true
        expect(results.any? {|result| result.is_a?(PackingSlip) && result.for_royalty_department?}).to be true
      end
    end
  end
end
