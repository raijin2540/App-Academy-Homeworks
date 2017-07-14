require 'lru_cache.rb'

describe LRUCache do
  subject(:cache) { LRUCache.new(3) }
  describe "#count" do
    it "should return number of elements in cache" do
      expect(cache.count).to eq(0)
    end

  end

  describe "#add" do

    it "should add element to cache according to LRU principle" do
      cache.add("cats")
      cache.add("dogs")
      expect(cache.count).to eq(2)
      expect(cache.show).to eq(["cats", "dogs"])
    end
  end


  describe "#show" do
   it "should show the items in the cache, with the LRU item first" do
     cache.add("cats")
     cache.add("tigers")
     expect(cache.show).to eq(["cats", "tigers"])
   end
  end

end
