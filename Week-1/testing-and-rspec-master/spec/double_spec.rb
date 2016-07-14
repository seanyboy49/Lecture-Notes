require_relative '../double'

describe '#double' do
  it 'doubles 2 to 4' do
    expect(double_num(2)).to eq(4)
  end

  it 'doubles 0 to 0' do
    expect(double_num(0)).to eq(0)
  end

  it 'doubles -7 to -14' do
    expect(double_num(-7)).to eq(-14)
  end

  it 'throws an error on invalid input' do
    expect { double_num("fsd") }.to raise_error NotANumberError
  end
end


