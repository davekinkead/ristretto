require "ristretto/version"

module Ristretto
  def self.parse(file)
    ruby = ''
    File.read(file).gsub /^( {4}|\t{2})([^-+*$].*?)$/ do |match|
      ruby << $2 << "\n"
    end
    ruby.strip
  end

  def self.execute(source)
    instance_eval source
  end
end
