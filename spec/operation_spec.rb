require 'operation'

describe Operation do

  it "keeps track of the balance" do
    operation = Operation.new(100, 100)
    expect(operation.balance).to eq(100)
  end

  it "keeps track of the amount" do
    operation = Operation.new(100, 100)
    expect(operation.amount).to eq(100)
  end

  it "keeps track of the date" do
    operation = Operation.new(100, 100)
    expect(operation.date).to eq("27-06-2016")
  end
end
