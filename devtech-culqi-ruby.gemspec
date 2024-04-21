$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'culqi/version'

Gem::Specification.new do |s|
  s.name          = 'devtech-culqi-ruby'
  s.version       = Culqi::VERSION
  s.date          = '2023-08-16'
  s.summary       = "Culqi Ruby"
  s.description   = "Biblioteca Culqi-Ruby, es compatible con la v2.0 del Culqi API, con el cual tendrás la posibilidad de realizar cobros con tarjetas de débito y crédito, Yape, PagoEfectivo, billeteras móviles y Cuotéalo con solo unos simples pasos de configuración.
  </br>Nuestra biblioteca te da la posibilidad de capturar el status_code de la solicitud HTTP que se realiza al API de Culqi, así como el response que contiene el cuerpo de la respuesta obtenida."
  s.authors       = ["Culqi Team"]
  s.email         = ['jose.calderon@culqi.com']
  s.files         = ["lib/culqi-ruby.rb"]
  s.homepage      = 'http://rubygems.org/gems/devtech-culqi-ruby'
  s.license       = 'MIT'
  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0.0'
end