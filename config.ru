#config.rut
require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200, {'Content-type' => 'text/html' }, ['<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod mi augue, sagittis rutrum dolor consectetur tempus. Nam eleifend accumsan metus, et convallis nisi finibus ut. Duis varius eget nisl placerat molestie. Mauris ut mauris turpis. Phasellus facilisis ipsum vitae interdum tempor. Nulla ultrices hendrerit turpis et mattis. Etiam posuere eros sed justo rutrum sollicitudin. Donec tempus nibh scelerisque luctus bibendum. Nunc eu porttitor sapien. Vivamus felis arcu, tristique eget augue in, faucibus aliquet mi. Etiam fermentum metus ac massa hendrerit hendrerit.</p>']]
 end
end

run MiPrimeraWebApp.new
