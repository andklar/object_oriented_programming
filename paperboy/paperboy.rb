class Paperboy

attr_accessor :name, :quota, :exp, :side

attr_reader :earnings

  def initialize(name, quota, exp, side, earnings)
    @name = name
    @quota = quota
    @exp = exp
    @side = side
    @earnings = earnings
  end

  def next_quota
    @quota = (exp / 2) + 50
  end

  def deliver(start_address, end_address)
    (end_address - start_address) / 2
    @exp += ((end_address - start_address) / 2)
  end

end

tommy = Paperboy.new("Tommy", 50, 0, "ODD", 0)
