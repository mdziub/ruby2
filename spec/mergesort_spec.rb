require 'simplecov'
SimpleCov.start

require "rspec"
require 'mergesort'

RSpec.describe 'mergesort.rb' do
  describe '#mergesort' do





    it 'najwiekszy int' do
      array = [7, 49, 12, 14, 19, 91]
      expect(mergesort(array)).to end_with(91)
    end

    it 'najmniejszy int' do
      array = [7, 49, 12, 14, 19, 91]
      expect(mergesort(array)).to start_with(7)
    end

    it 'poprawnosc sortowania dla nieujemnych' do
      array = [7, 49, 12, 14, 0, 19, 91]
      expect(mergesort(array)).to eq([0, 7, 12, 14, 19, 49, 91])
    end

    it 'poprawnosc sortowanie dla niedodatnich' do
      array = [-7, -49, -12, -14, 0, -19, -91]
      expect(mergesort(array)).to eq([-91, -49, -19, -14, -12, -7, 0])
    end

    it 'poporawnosc sortowania dla calkowitych' do
      array = [-7, 49, -12, 14, 0, -19, 91]
      expect(mergesort(array)).to eq([-19, -12, -7, 0, 14, 49, 91])
    end

    it 'poprawnosc sortowania calkowitych nieujemnych' do
      array = [1.2, 3.7, 5.1, 7.9, 2.1]
      expect(mergesort(array)).to eq([1.2, 2.1, 3.7, 5.1, 7.9])
    end

    it 'poprawnosc sortowania calkowitych niedodatnuch' do
      array = [-1.2, -3.7, -5.1, -7.9, -2.1]
      expect(mergesort(array)).to eq([-7.9, -5.1, -3.7, -2.1, -1.2])
    end

    it 'should test negative with positive decimal' do
      array = [-7.6, -7.4, 1.3, 1.7, -6.8]
      expect(mergesort(array)).to eq([-7.6, -7.4, -6.8, 1.3, 1.7])
    end

    it "should handle single element arrays" do
      expect(mergesort([2])).to eq([2])
    end

    it "should not alter an already sorted array" do
      array = [-2, 0, 1, 8, 12, 19, 101, 149.4]
      expect(mergesort(array)).to eq([-2, 0, 1, 8, 12, 19, 101, 149.4])
    end
	
	 it "should not alter an already sorted array" do
      array = [aa, b]
      expect(mergesort(array)).to eq([aa, b])
    end


  end
end
