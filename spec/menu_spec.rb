require 'simplecov'
SimpleCov.start

require 'menu'

RSpec.describe 'menu.rb' do
  obj = Menu.new

  it 'should not raise error' do
    expect { obj.to_s }.not_to raise_error
  end
   
  describe '.to_s' do

    context 'when call to_s function' do
      it { expect(obj.to_s).to be_a(String) }
    end
  end


    describe '.clear' do

    context 'when call clear function' do
      it { expect { obj.clear }.not_to raise_error }
    end
  end
end
