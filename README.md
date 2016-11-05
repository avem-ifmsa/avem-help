# avem-help
Este es el repositorio oficial del centro de ayuda de [AVEM](http://avem.es).

`avem-help` es un proyecto de código abierto, lo que significa que todo el código está a disposición del público. Cualquiera puede examinarlo, reutilizarlo, así como colaborar con nosotros.

## Configuración del entorno de desarrollo
Con el objetivo de facilitar el mantenimiento, este proyecto hace uso de [Nanoc](http://nanoc.ws), el generador de páginas web estáticas. De esta forma, podemos utilizar [Markdown](https://guides.github.com/features/mastering-markdown/), un lenguaje de marcado más sencillo que HTML, para generar el código definitivo de nuestra página.

Para ello, es necesario tener instalados Ruby y RubyGems (los pasos a seguir son dependientes de la plataforma). Una vez hecho esto, nos situamos en la carpeta del proyecto y podremos instalar el resto de dependencias por medio de bundle:

```sh
bundle install
```

## Generar proyecto
Antes de poner en marcha la página, es necesario convertir nuestro código Markdown en código HTML. Para ello, es necesario ejecutar desde la carpeta del proyecto:

```sh
bundle exec nanoc live
```

Una vez hecho esto, podremos ver el resultado en <http://localhost:3000>.
