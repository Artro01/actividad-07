import web

render = web.template.render ('application/views', base='master')

class Acercade:        
    def __init__(self):
        pass

    def GET(self):
            datos =['Arturo','Ramirez','Pontaza','Maestria en TICS','Interfaces graficas y usabilidad','arturorami01@gmail.com']
            return render.acercade(datos)