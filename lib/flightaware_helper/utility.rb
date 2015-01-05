# Helper functions for lita-flightaware
module FlightawareHelper
  # Utility functions
  module Utility
    def lookup_flight(number)
      number == 'REAL00' ? true : nil
    end

    def format_flight(_flight)
      t('flight.details', number: 'REAL00',
                          origin: 'KSTL',
                          destination: 'KSFO',
                          p_depart: '12:34 CST',
                          a_depart: '12:35 CST',
                          p_arrival: '14:36 PST',
                          a_arrival: '14:37 PST')
    end
  end
end
