# Health nos va a devolver en qué estado está la API (OK / DOWN)
# pero también nos va a indicar el estado de nuestra DB (OK / DOWN)
# para en caso de tener algun inconveniente saber dónde está el problema.

require "rails_helper" # Nos permite utilizar todas las funcionalidades de RSpec

# Dependiendo el type, rspec nos ofrece funcionalidades puntuales.
# En este caso, poder acceder a response.body

# Describe arma un bloque descriptivo para una serie de pruebas 
RSpec.describe "Health endpoint", type: :request do
    describe "GET /health" do 
        # before: Qué debe ocurrir antes de cada prueba?
        before { get '/health' } # En este caso hacer un get a /health

        # it se encarga de ejecutar el test
        it "should return OK" do # El endpoint nos devuelve un objeto con lo siguiente { api: OK }
            payload = JSON.parse(response.body)
            expect(payload).not_to be_empty
            expect(payload['api']).to eq('OK')
        end

        it "should return status code 200" do # El endpoint también devuelve http status 200
            expect(response).to have_http_status(200)
        end

    end

end