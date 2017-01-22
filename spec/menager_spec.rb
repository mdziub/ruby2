require 'simplecov'
SimpleCov.start
require 'manager'
RSpec.describe 'manager.rb' do
  obj = Manager.new

  it 'should add new game' do
    expect { obj.add_gra('Nowa', 'Hive', '155', '15', 'Strategia', '10-10-2017') } .not_to raise_error
  end

  it 'should output all games' do
    expect { obj.list_gra } .not_to raise_error
  end

  it 'should edit gra' do
    expect { obj.update_muzyka(1, 'Nowa2', 'Hive2', '145', '16', 'Przygoda', '11-10-2017') ') } .not_to raise_error
  end

  it 'should delete game' do
    expect { obj.delete_gra(1) } .not_to raise_error
  end

  it 'should get class variable' do
    expect { Manager.gra }.not_to raise_error
  end
end
