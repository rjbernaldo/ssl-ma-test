class MyClaimsMatcher
  require 'byebug'
  def initialize(enabled)
    raise ArgumentError, "enabled must be true/false" unless [true, false].include?(enabled)
    @enabled = enabled
  end

  def match(_env)
    byebug
    @enabled
  end

  # Generates inspectable attributes for debugging
  #
  # @return [true, false] is the matcher enabled?
  def attributes
    @enabled
  end
end