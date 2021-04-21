require_relative '../lib/caesar_cipher.rb'
describe"the_shift_char method" do 
  it "should shift a character + 5" do 
    expect(the_shift_char?("a", 5)).to eq("f")
    expect(the_shift_char?("B", 5)).to eq("G")
    expect(the_shift_char?("z", 5)).to eq("e")
    expect(the_shift_char?("Z", 5)).to eq("E")
    expect(the_shift_char?(" ", 5)).to eq(" ")
  end
end