require 'simplecov'
SimpleCov.start
require 'gra'

RSpec.describe 'gra.rb' do
  before :each do
    @gra = Gra.new  :id, :title, :producer, :price, :wiek, :typgry, :sdate
  end
  describe '#id' do
    it 'returns the correct id' do
      expect(@gra.id).to eq(:id)
    end
  end
  describe '#tytul' do
    it 'returns the correct title' do
      expect(@gra.title).to eq(:title)
    end
  end
  describe '#producer' do
    it 'returns the correct autor' do
      expect(@gra.producer).to eq(:producer)
    end
  end
describe '#price' do
    it 'returns the correct price' do
      expect(@gra.price).to eq(:price)
    end
  end
describe '#wiek' do
    it 'returns the correct age' do
      expect(@gra.wiek).to eq(:wiek)
    end
  end
describe '#typgry' do
    it 'returns the correct title' do
      expect(@gra.typgry).to eq(:typgry)
    end
  end


  describe '#premiera' do
    it 'returns the correct year of production' do
      expect(@gra.sdate).to eq(:sdate)
    end
  end
  describe '#new' do
    it 'when creates new object' do
      expect(@gra).to be_an_instance_of(Gra)
    end
  end
end
