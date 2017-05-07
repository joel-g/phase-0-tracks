require_relative 'word_guesser'

describe Guess do
  let(:guess) { Guess.new("helloworld") }

  it "returns the word player 2 is guessing" do
    expect(guess.word).to eq "helloworld"
  end

  it "checkss to see if E is in helloworld" do
    guess.try_letter("e")
    expect(guess.try_letter("e")).to eq "_e________"
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end