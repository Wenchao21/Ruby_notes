class Name
  @@count = 0

  def initialize(a,b)
    @firstName = a
    @lastName = b
    @@count = @@count + 1
  end

  def self.get_name_count
    @@count
  end

  def lastName
    @lastName
  end

  def firstName
    @firstName
  end

  def fullName
    name = @firstName + @lastName
    name
  end
end