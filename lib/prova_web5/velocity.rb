# documentacao
class Velocity
  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  # metros por hora
  def to_mps
    if @unit == 'kph'
      @value * 0.277778
    elsif @unit == 'mph'
      @value * 0.44704
    elsif @unit == 'pps'
      @value * 0.3048
    elsif @unit == 'knots'
      @value * 0.514444
    else @value
    end
  end

  # quilometros por hora
  def to_kph
    if @unit == 'mps'
      @value * 3.6
    elsif @unit == 'mph'
      @value * 1.60934
    elsif @unit == 'pps'
      @value * 1.09728
    elsif @unit == 'knots'
      @value * 1.852
    else @value
    end
  end

  # milhas por hora
  def to_mph
    if @unit == 'mps'
      @value * 2.23694
    elsif @unit == 'kph'
      @value * 0.621371
    elsif @unit == 'pps'
      @value * 0.681818
    elsif @unit == 'knots'
      @value * 1.15078
    else @value
    end
  end

  # pes por segundo
  def to_pps
    if @unit == 'mps'
      @value * 3.28084
    elsif @unit == 'kph'
      @value * 0.911344
    elsif @unit == 'mph'
      @value * 1.46667
    elsif @unit == 'knots'
      @value * 1.68781
    else @value
    end
  end

  # pes por segundo
  def to_knots
    if @unit == 'mps'
      @value * 1.94384
    elsif @unit == 'kph'
      @value * 0.539957
    elsif @unit == 'mph'
      @value * 0.868976
    elsif @unit == 'pps'
      @value * 0.592484
    else @value
    end
  end
end
