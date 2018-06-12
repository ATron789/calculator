class Calculator
attr_accessor :fi, :si, :op

def initialize (fi, si, op)
  @fi = fi
  @si = si
  @op = op
end

  def calculate
    case op
    when 'sum'
      fi + si
    when 'sub'
      fi - si
    when 'tim'
      fi * si
    when 'div'
      fi / si
    end
  end
end
