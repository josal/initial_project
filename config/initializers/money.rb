Money::Currency::TABLE[:eur] = {
  :priority => 1,
  :iso_code => "EUR",
  :name     => "Euro",
  :symbol   => "€",
  :subunit  => "Cent",
  :subunit_to_unit => 100,
  :separator => ",",
  :delimiter => "."
}
Money.default_currency = Money::Currency.new("EUR")
