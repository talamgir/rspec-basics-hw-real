require './transaction'

describe Transaction do

	let(:transaction){ Transaction.new}
	let(:filled_in_transaction){ Transaction.new(credit_account: 123, debit_account: 100, amount: 800, time: Time.new(2015))}

	it " should raise an error for account number" do
		expect(filled_in_transaction.credit_account).to eq(123)
	end

	it " should be a fixnum" do
		expect(filled_in_transaction.credit_account).to be_a_kind_of(Fixnum)
	end

	it " should raise an error for amount" do
		expect(filled_in_transaction.amount).to eq(800)
	end

	it "should raise an error for time" do 
		expect(filled_in_transaction.time).to eq(Time.new(2015))
	end

	it " for amount to currency " do
		expect(filled_in_transaction.amount.to_s.insert(-3, ".")). to eq("8.00")
	end

	it " for pretty time" do
		expect(filled_in_transaction.time.strftime("%A, %d %b %Y %l:%M %p")).to eq("Thursday, 01 Jan 2015 12:00 AM")
	end
end