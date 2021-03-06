require 'thor'
require 'thor/group'

module Artoo
  module Commands
    class Commands < Thor
      include Thor::Actions
      include Artoo::Utility

      def self.banner(command, namespace = nil, subcommand = false)
        "#{basename} #{@package_name} #{command.usage}"
      end

      def self.install_dir
        ENV['GEM_HOME'] + "/.artoo/commands"
      end
    end
  end
end
