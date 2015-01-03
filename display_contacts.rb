class DisplayContacts
  def process!
    File.open(FILENAME, "r") { |f| f.each_line { |line| puts line } }
  end
end
