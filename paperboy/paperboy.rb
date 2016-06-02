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
    delivered = (end_address - start_address) / 2
    if @side == "ODD" && (end_address - start_address).even? && start_address.odd?
      delivered += 1
    elsif @side == "EVEN" && (end_address - start_address).even? && start_address.even?
      delivered += 1
    end
    @exp += delivered
      if delivered < @quota
          @earnings += (0.25 * delivered) - 2
      elsif delivered >= @quota
          @earnings += (@quota * 0.25) + ((delivered - @quota) * 0.50)
      end
    puts @exp
  end

  def report
    "I\'m #{name}, I\'ve delivered #{exp} papers and I\'ve earned $#{earnings} so far!"
  end

end


tommy = Paperboy.new("Tommy", 50, 0, "ODD", 0)
