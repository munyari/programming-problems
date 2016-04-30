require "convert"

bin='01'
oct='01234567'
dec='0123456789'
hex='0123456789abcdef'
allow='abcdefghijklmnopqrstuvwxyz'
alup='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alpha='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
alphanum='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

describe "#convert" do
  it 'handles basic purely numeric tests' do
    expect(convert("15", dec, bin)).to eq '1111'
    expect(convert("15", dec, oct)).to eq '17'
    expect(convert("1010", bin, dec)).to eq '10'
    expect(convert("1010", bin, hex)).to eq 'a'
  end

  it 'handles basic alphanumeric tests'  do
    expect(convert("0", dec, alpha)).to eq 'a'
    expect(convert("27", dec, allow)).to eq 'bb'
    expect(convert("hello", allow, hex)).to eq '320048'
    expect(convert("SAME", alup, alup)).to eq 'SAME'
  end
end
