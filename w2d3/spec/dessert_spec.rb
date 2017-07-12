require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Jin" ) }
  let(:cakes) {Dessert.new('cakes', 3, chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(cakes.type).to eq("cakes")
    end

    it "sets a quantity" do
      expect(cakes.quantity).to eq(3)
    end

    it "starts ingredients as an empty array" do
      expect(cakes.ingredients). to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do
        Dessert.new('cakes', 'cats', :chef)
      end.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cakes.add_ingredient("sugar")). to eq (cakes.ingredients)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do

    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cakes.eat(1)). to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect do
        cakes.eat(10)
      end.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Jin the Great Baker")
      expect(cakes.serve).to eq("Chef Jin the Great Baker has made 3 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cakes)
      cakes.make_more
    end


  end
end
