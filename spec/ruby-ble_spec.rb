require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../lib/ble/adapter')
require File.expand_path(File.dirname(__FILE__) + '/../lib/ble')

describe 'Ruby-ble' do
  it 'scans' do
    BLE::Adapter.list
    a = BLE::Adapter.new('hci0')
    a.start_discovery
    sleep(10)
    a.stop_discovery
    a.devices
  end
end
