module GuesserHelper
  # These are actually used from the controller. The helpers
  # are meant to be used from the View, which never touches
  # this.
  # TODO: Move this somewhere that makes more sense.

  def inches_to_centimeters(inches)
    # 1 ft  == 0.3048 m == 304.8 cm
    # =>
    inches * 0.254
  end

  def pounds_to_kilos (pounds)
    pounds * 0.4536
  end

  def american_to_metric(height, mass)
    # assumes height is in inches and mass in pounds
    h = inches_to_centimeters height
    m = pounds_to_kilos mass
    # Really should round this, at least
    return h.to_int, m.to_int
  end
end
