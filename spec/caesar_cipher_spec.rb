require './lib/script.rb'

describe "Cipher Test" do
  describe "#caesar_cipher" do
    it "shifts a single letter according to shift factor" do
      expect(caesar_cipher("a", 2)).to eql("c")
    end

    it "wraps from z to a" do
      expect(caesar_cipher("z", 2)).to eql("b")
    end

    it "shifts capital letters, keeping them capital" do
      expect(caesar_cipher("E", 1)).to eql("F")
    end

    it "keeps numbers, spaces and symbol characters unchanged" do
      expect(caesar_cipher("Error 404!", 2)).to eql("Gttqt 404!")
    end
  end
end