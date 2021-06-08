require_relative './spec_helper'
require 'bigdecimal'

RSpec.describe InvoiceItem do
  describe 'instantiation' do
    before :each do
      @ii = InvoiceItem.new({
        :id => 6,
        :item_id => 7,
        :invoice_id => 8,
        :quantity => 1,
        :unit_price => BigDecimal(10.99, 4),
        :created_at => Time.now.to_s,
        :updated_at => Time.now.to_s
        })
    end

    it 'exists' do
      expect(@ii).to be_a(InvoiceItem)
    end

    it 'has attributes' do

      expect(@ii.id).to eq(6)
      expect(@ii.item_id).to eq(7)
      expect(@ii.invoice_id).to eq(8)
      expect(@ii.quantity).to eq(1)
      expect(@ii.unit_price).to eq(BigDecimal(10.99, 4))
    end
  end

  describe 'methods' do
    it 'returns the price of the item in dollars formatted as a Float' do
      ii = InvoiceItem.new({
        :id => 6,
        :item_id => 7,
        :invoice_id => 8,
        :quantity => 1,
        :unit_price => BigDecimal(10.99, 4),
        :created_at => Time.now.to_s,
        :updated_at => Time.now.to_s
        })
        # invoice_item1 = @iir.all[1]

      expect(ii.unit_price_to_dollars).to eq(10.99)
    end
  end
end