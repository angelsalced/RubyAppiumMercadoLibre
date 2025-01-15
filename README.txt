#Pre-Requisitos para Windows (desconozco si algunos comandos puedas llegar a variar en Mac)
>Tener en ejecucion emulador de Android (para las pruebas se uso emulador Pixel 7  Version 15.0 Android)
>En el dispositivo Android debe estar instalada Mercado Libre (sin tener sesion iniciada en ML)
>Desde CMD ejecutar Appium (previamente instalado) para poder realizar conexion entre emulador y script (Version 2.15.0)
>Verificar tener ruby instalado desde CMD "ruby -v" (V 3.4.1)
>Instalar blunder desde CMD "gem install bundler"
>Desde Terminal, en la carpera raiz, ejecutar "bundle install" para instalar gems necesarias
>Verificar caps de appium y ajustar en caso de no coincidir con las establecidas en este script (../features/support/general_functions.rb)

#Ejecucion
>Desde Terminal, en carpeta raiz, ejecutar "cucumber"
>Revisar consola, durante ejecucion, en ella se imprimiran nombres y precios de los 5 prim productos
>Abrir html (localizado en ruta .../features/reports/report.html) donde se puede visualizar el paso a paso y abrir las capturas


#Riesgos
>Se comenta dispositivo usado debido a que para el proceso de obtener nombre y precio se debio scrollear por pixeles, lo podria llegar a afectar un find_element
(es posible modificar esto desde .../features/support/products_functions.rb, modificando el cuarto valor del arrastre para que desplaze mas o menos, la modificacion solo es subir
o bajar por unidades (los valores sobre los cuales se estuvo trabajando fueron el rango de 468 a 465)) 
>>Por el momento con el que esta asignado debe funcionar correctamente, pero se menciona porque durante la ejecucion este valor se llego a tener que modificar

#Mejoras (o cosas que hubiera implementado con uno poco mas de tiempo)
>Layout para que la busqueda pudiera ser dinamica, asi como para poder aplicar mas filtros, en algunos hasta 2 (por ejemplo, condicion se podria seleccionar
 Nuevo y Reacondicionado o asi)
>Se usan algunos wait until y find eleement el distinta linea, debido que los wait until estaban pensados para otro elemento, pero luego note que podian usarse
 a algunos con los que ya se interactuaba
>Se decidio usar Funciones por Proceso mas que POM, pero simulando que esto fuese un trabajo real aun asi permitiria la escalabilidad conforme el proyecto creciera

