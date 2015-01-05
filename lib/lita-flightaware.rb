require 'lita'

Lita.load_locales Dir[File.expand_path(
  File.join('..', '..', 'locales', '*.yml'), __FILE__
)]

require 'flightaware_helper/regex'
require 'flightaware_helper/utility'

require 'lita/handlers/flightaware'
