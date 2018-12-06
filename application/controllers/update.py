import web
import application.models.model_datos as model_datos

render = web.template.render('application/views/', base='master')

class Update:
    def __init__(self):
        pass

    def GET(self, email): 
        datos = model_datos.select_email(email) 
        return render.update(datos)
    
    def POST(self, email):
        formulario = web.input() #almacena los datos del formulario web
        nombre = formulario['nombre']
        paterno = formulario['paterno']
        materno = formulario['materno']
        num = formulario['num']
        email = formulario['email'] #almacena el email del input email
        password = formulario['password'] #almacena el password del input password
        model_datos.update_datos(nombre, paterno, materno, num, email, password) #actualiza los valores
        raise web.seeother('/') #redirecciona el index
