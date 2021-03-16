require 'credit_card_valid'
require 'main_process'

describe '#main_process' do
  it 'should read input.txt to process' do
    expected = "Lisa: $3093\nQuincy: error\nTom: $-300\n"
    expect(main_process('input.txt')).to eq expected
  end
end

