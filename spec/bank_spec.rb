require 'bank'

describe Bank do
  subject(:selfbank) { described_class.new}

  it "can create new accounts" do
    expect(selfbank.open_account.instance_of?(Account)).to eq(true)
  end

  it "can store the accounts" do
    new_account = selfbank.open_account
    expect(selfbank.accounts_log).to eq([new_account])
  end
end
