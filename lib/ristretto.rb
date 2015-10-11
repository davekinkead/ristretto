require "ristretto/version"

module Ristretto
  def self.parse(file)
    ruby = ''
    File.read(file).gsub /^    (.*)/ do |match|
      ruby << $1 << "\n"
    end
    ruby.strip
  end

  def self.execute(source)
    eval source
  end
end
