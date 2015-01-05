module Lita
  module Handlers
    class Flightaware < Handler
      config :api_key, required: true
      config :username, required: true

      include ::FlightawareHelper::Regex
      include ::FlightawareHelper::Utility

      route(
        /^flight\s#{FLIGHT_NUMBER_PATTERN}$/,
        :details,
        command: true,
        help: {
          t('help.details.syntax') => t('help.details.desc')
        }
      )

      def details(response)
        number = response.match_data['flight_number']
        flight = lookup_flight(number)
        return response.reply(t('flight.not_found', number: number)) if flight.nil?
        response.reply(format_flight(flight))
      end
    end

    Lita.register_handler(Flightaware)
  end
end
