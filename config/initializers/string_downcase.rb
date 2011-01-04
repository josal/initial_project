##Al hacer búsquedas, quiero hacerlas sin distinguir mayúsculas y minúsculas... pero ruby no me convierte los acentos a minúsculas... hay que trucarlo en 1.8.7 al menos
##Lo que no puedo evitar al comparar con downcase es que metan acentos..., entonces son cadenas diferentes...
class String
  alias_method :old_rapidito_upcase, :upcase
  def upcase
    self.gsub( /\303[\240-\277]/ ) do
      |match|
      match[0].chr + (match[1] - 040).chr
    end.old_rapidito_upcase
  end
  
  alias_method :old_rapidito_downcase, :downcase
  def downcase
    self.gsub( /\303[\200-\237]/ ) do
      |match|
      match[0].chr + (match[1] + 040).chr
    end.old_rapidito_downcase
  end
end