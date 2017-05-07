require_relative 'word_guesser'

describe Guess do
  let(:guess) { Guess.new("helloworld") }

  it "returns the word player 2 is guessing" do
    expect(guess.word).to eq "HELLOWORLD"
  end

  it "checks to see if 'l' is in 'helloworld'" do
    guess.try_letter("l")
    expect(guess.try_letter("l")).to eq "__LL____L_"
  end
end