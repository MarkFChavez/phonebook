class Contact
  attr_reader :name, :number

  def initialize(options={})
    @name = options[:name]
    @number = options[:number]
  end

  def self.create!(options = {})
    new(options).create!
  end

  def create!
    File.open(FILENAME, "a") { |f| f.puts self }
  end

  def to_s
    [name, number].join(",")
  end
end

