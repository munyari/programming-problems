require "simplify"

describe "#simplify" do
  it("Test reduction by equivalence") do
    expect(simplify("dc+dcba")).to eq "cd+abcd"
    expect(simplify("2xy-yx")).to eq "xy"
    expect(simplify("-a+5ab+3a-c-2a")).to eq "-c+5ab"
  end

  it("Test monomial length ordering") do
    expect(simplify("-abc+3a+2ac")).to eq "3a+2ac-abc"
    expect(simplify("xyz-xz")).to eq "-xz+xyz"
  end

  it("Test lexicographic ordering") do
    expect(simplify("a+ca-ab")).to eq "a-ab+ac"
    expect(simplify("xzy+zby")).to eq "byz+xyz"
  end

  it("Test no leading +") do
    expect(simplify("-y+x")).to eq "x-y"
    expect(simplify("y-x")).to eq "-x+y"
  end
end
