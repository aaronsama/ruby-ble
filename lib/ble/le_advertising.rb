module BLE
  # Set up LE Advertising
  # https://kernel.googlesource.com/pub/scm/bluetooth/bluez/+/refs/heads/master/doc/advertising-api.txt
  class LEAdvertising < DBus::Object
    dbus_interface I_LE_ADVERTISING do
      dbus_method :Release do |device|
      end

      #(object advertisement, dict options)
      dbus_method :RegisterAdvertisement do 
      end
      
      #(object advertisement)
      dbus_method :UnregisterAdvertisement do        
      end
      
    end
  end
end
