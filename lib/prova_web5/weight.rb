# documentacao
class Weight
  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  # converter para grama
  def to_g
    if @unit == 'kg' || @unit == 't'
      kg_and_t_to_g
    elsif @unit == 'lb'
      @value * 453.592
    elsif @unit == 'oz'
      @value * 28.3495
    elsif @unit == 'ct'
      @value * 0.2
    else @value
    end
  end

  # converter para grama
  def to_kg
    if @unit == 'g' || @unit == 't'
      to_g / 1000
    elsif @unit == 'lb'
      @value * 0.453592
    elsif @unit == 'oz'
      @value * 0.0283495
    elsif @unit == 'ct'
      @value * 0.0002
    else @value
    end
  end

  # converter para tonelada
  def to_t
    if @unit == 'g' || @unit == 'kg'
      to_g / (1000 * 1000)
    elsif @unit == 'lb'
      @value * 0.000453592
    elsif @unit == 'oz'
      @value * 0.0000283495
    elsif @unit == 'ct'
      @value * 0.0000002
    else @value
    end
  end

  def to_lb
    if @unit != 'lb'
      to_g * 0.00220462
    else
      @value
    end
  end

  def to_oz
    if @unit != 'oz'
      to_g * 0.035274
    else
      @value
    end
  end

  def to_ct
    if @unit != 'ct'
      to_g * 5
    else
      @value
    end
  end

  private

  def kg_and_t_to_g
    if @unit == 'kg'
      @value * 1000
    else
      @value * 1000 * 1000
    end
  end
end
