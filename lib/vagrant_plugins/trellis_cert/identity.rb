# frozen_string_literal: true

module VagrantPlugins
  module TrellisCert
    module Identity
      def self.name
        "vagrant-trellis-cert"
      end

      def self.version
        "0.1.1"
      end

      def self.description
        "Trust all Trellis self-signed certificates with single command"
      end

      def self.summary
        description
      end
    end
  end
end
