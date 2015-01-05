require 'spec_helper'

describe Lita::Handlers::Flightaware, lita_handler: true do
  it do
    is_expected.to route_command('flight UA715').to(:details)
  end

  describe '#details' do
    it 'shows the details of a flight if it exists' do
      send_command('flight REAL00')
      expect(replies.last).to eq("Flight REAL00:\n" \
                                 "KSTL to KSFO\n" \
                                 "Planned departure: 12:34 CST\n" \
                                 "Actual departure: 12:35 CST\n" \
                                 "Planned arrival: 14:36 PST\n" \
                                 "Actual arrival: 14:37 PST\n")
    end

    it 'warns the user if the flight cannot be found' do
      send_command('flight MADEUP00')
      expect(replies.last).to eq('Flight "MADEUP00" was not found')
    end
  end
end
