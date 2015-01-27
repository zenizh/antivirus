module Antivirus
  module Validator
    class ProfanityFilterValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        record.errors[attribute] << message if value && profane?(value)
      end

      private

      def profane?(value)
        !!(value.downcase =~ Regexp.union(profane_words.map(&:downcase)))
      end

      def profane_words
        t('antivirus.profane_words', [])
      end

      def message
        t('antivirus.message', 'includes profane words.')
      end

      def t(key, default)
        value = I18n.t(key, default: '')
        value.present? ? value : default
      end
    end
  end
end
