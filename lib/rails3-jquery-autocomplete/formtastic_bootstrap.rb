#
# Only Formtastic 2.x
#
module FormtasticBootstrap
  module Inputs
    class AutocompleteInput < FormtasticBootstrap::Inputs::StringInput
      include Base
      include Base::Stringish

      def to_html
        bootstrap_wrapping do
          builder.autocomplete_field(method, options.delete(:url), input_html_options)
        end
      end
    end
  end
end
