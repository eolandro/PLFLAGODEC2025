from pathlib import Path

def crear_procesador_csv():
    
    ##R001##
    def leer_archivo(ruta: Path):
        with open(ruta, 'r', encoding='utf-8') as archivo:
            return archivo.read()
    
    ##R002##
    def separar_lineas(contenido):
        def generar_lineas():
            for linea in contenido.split('\n'):
                if linea.strip():
                    yield linea
        return list(generar_lineas())
    
    def parsear_csv_linea(linea):
        return list(map(str.strip, linea.split(',')))
    
    def procesar_csv(contenido):
        return list(map(parsear_csv_linea, separar_lineas(contenido)))
    
    def obtener_indice_columna(encabezados, nombre_columna):
        def buscar_recursivo(lista, columna, indice):
            if not lista:
                return -1
            if lista[0] == columna:
                return indice
            return buscar_recursivo(lista[1:], columna, indice + 1)
        return buscar_recursivo(encabezados, nombre_columna, 0)
    
    ##R003##
    def filtrar_por_estatus(lista_de_listas):
        if not lista_de_listas:
            return []
        
        encabezados = lista_de_listas[0]
        datos = lista_de_listas[1:]
        
        indice_estatus = obtener_indice_columna(encabezados, 'C_ESTATUS')
        
        if indice_estatus == -1:
            print("Advertencia: Columna C_ESTATUS no encontrada")
            return lista_de_listas
        
        def es_activo(fila):
            if len(fila) > indice_estatus:
                return fila[indice_estatus] == 'ACTIVO'
            return False
        
        datos_filtrados = list(filter(es_activo, datos))
        return [encabezados] + datos_filtrados
    
    ##R004##
    def obtener_indices_a_eliminar(encabezados, columnas_eliminar):
        return list(map(lambda col: obtener_indice_columna(encabezados, col), columnas_eliminar))
    
    def eliminar_elementos_por_indices(fila, indices_eliminar):
        def enumerar_elementos():
            indice = 0
            for elemento in fila:
                yield (indice, elemento)
                indice += 1
        
        elementos_filtrados = filter(lambda par: par[0] not in indices_eliminar, 
                                     list(enumerar_elementos()))
        
        return list(map(lambda par: par[1], elementos_filtrados))
    
    def eliminar_columnas(lista_de_listas, columnas_eliminar):
        if not lista_de_listas:
            return []
        
        encabezados = lista_de_listas[0]
        indices_eliminar = obtener_indices_a_eliminar(encabezados, columnas_eliminar)
        
        indices_validos = list(filter(lambda x: x != -1, indices_eliminar))
        
        return list(map(lambda fila: eliminar_elementos_por_indices(fila, indices_validos), 
                       lista_de_listas))
    
    ##R005##
    def filtrar_por_email(lista_de_listas):
        if not lista_de_listas:
            return []
        
        encabezados = lista_de_listas[0]
        datos = lista_de_listas[1:]
        
        indice_email = obtener_indice_columna(encabezados, 'CONTACTO_C_EMAIL')
        
        if indice_email == -1:
            print("Advertencia: Columna CONTACTO_C_EMAIL no encontrada")
            return lista_de_listas
        
        def email_valido(fila):
            if len(fila) > indice_email:
                email = fila[indice_email].strip()
                return email != 'actualizar@hotmail.com' and email != ''
            return False
        
        datos_filtrados = list(filter(email_valido, datos))
        return [encabezados] + datos_filtrados
    
    ##R006##
    def filtrar_por_telefonos(lista_de_listas):
        if not lista_de_listas:
            return []
        
        encabezados = lista_de_listas[0]
        datos = lista_de_listas[1:]
        
        indice_telefono = obtener_indice_columna(encabezados, 'CONTACTO_C_TELEFONO')
        indice_celular = obtener_indice_columna(encabezados, 'CONTACTO_C_CELULAR')
        
        if indice_telefono == -1 or indice_celular == -1:
            print("Advertencia: Columna CONTACTO_C_TELEFONO o CONTACTO_C_CELULAR no encontrada")
            return lista_de_listas
        
        def tiene_telefono_valido(fila):
            telefono_valido = False
            celular_valido = False
            
            if len(fila) > indice_telefono:
                telefono_valido = fila[indice_telefono].strip() != ''
            
            if len(fila) > indice_celular:
                celular_valido = fila[indice_celular].strip() != ''
            
            return telefono_valido or celular_valido
        
        datos_filtrados = list(filter(tiene_telefono_valido, datos))
        return [encabezados] + datos_filtrados
    
    ##R007##
    def buscar_tec_san_juan(lista_de_listas):
        if not lista_de_listas:
            return None
        
        encabezados = lista_de_listas[0]
        datos = lista_de_listas[1:]
        
        indice_nombre = obtener_indice_columna(encabezados, 'C_NOMBRE')
        indice_cct = obtener_indice_columna(encabezados, 'CV_CCT')
        indice_latitud = obtener_indice_columna(encabezados, 'INMUEBLE_LATITUD')
        indice_longitud = obtener_indice_columna(encabezados, 'INMUEBLE_LONGITUD')
        
        if indice_nombre == -1 or indice_cct == -1:
            print("Advertencia: Columnas necesarias no encontradas")
            return None
        
        def es_tec_san_juan(fila):
            if len(fila) > indice_nombre:
                nombre = fila[indice_nombre].strip().lower()
                return 'tecnologico' in nombre and 'san juan' in nombre
            return False
        
        resultados = list(filter(es_tec_san_juan, datos))
        
        if not resultados:
            return None
        
        fila_encontrada = resultados[0]
        
        return {
            'CV_CCT': fila_encontrada[indice_cct] if len(fila_encontrada) > indice_cct else '',
            'nombre': fila_encontrada[indice_nombre] if len(fila_encontrada) > indice_nombre else '',
            'latitud': fila_encontrada[indice_latitud] if len(fila_encontrada) > indice_latitud else '',
            'longitud': fila_encontrada[indice_longitud] if len(fila_encontrada) > indice_longitud else ''
        }
    
    def tomar_primeras_n(lista, n):
        def tomar_recursivo(lst, count, acc):
            if count == 0 or not lst:
                return acc
            return tomar_recursivo(lst[1:], count - 1, acc + [lst[0]])
        return tomar_recursivo(lista, n, [])
    
    def enumerar_lista(lista):
        def generar_enumerados():
            contador = 1
            for item in lista:
                yield (contador, item)
                contador += 1
        return list(generar_enumerados())
    
    def imprimir_lineas(lineas_enumeradas):
        def imprimir_recursivo(lst):
            if not lst:
                return
            indice, linea = lst[0]
            print(f"  {indice}. {linea}")
            imprimir_recursivo(lst[1:])
        imprimir_recursivo(lineas_enumeradas)
    
    return (leer_archivo, procesar_csv, filtrar_por_estatus, filtrar_por_email,
            filtrar_por_telefonos, buscar_tec_san_juan, eliminar_columnas, 
            tomar_primeras_n, enumerar_lista, imprimir_lineas)


def run():
    (leer_archivo, procesar_csv, filtrar_por_estatus, filtrar_por_email,
     filtrar_por_telefonos, buscar_tec_san_juan, eliminar_columnas, 
     tomar_primeras_n, enumerar_lista, imprimir_lineas) = crear_procesador_csv()
    
    ruta_archivo = Path('cct22.csv')
    
    columnas_a_eliminar = [
        'CV_TIPO', 'C_TIPO',
        'TIPONIVELSUB_CV_SERVICION1',
        'TIPONIVELSUB_C_SERVICION1',
        'TIPONIVELSUB_CV_SERVICION2',
        'TIPONIVELSUB_C_SERVICION2',
        'TIPONIVELSUB_CV_SERVICION3',
        'TIPONIVELSUB_C_SERVICION3',
        'C_SERVICIO_CAM',
        'CARACTERISTCA_CV_CARACTERIZAN1',
        'CARACTERISTCA_C_CARACTERIZAN1',
        'CARACTERISTCA_CV_CARACTERIZAN2',
        'CARACTERISTCA_C_CARACTERIZAN2',
        'C_TUNO_1', 'C_TUNO_2', 'C_TUNO_3'
    ]
    
    print(f"Buscando archivo: {ruta_archivo.resolve()}")
    
    ##R001##
    if ruta_archivo.exists():
        ##R002##
        contenido = leer_archivo(ruta_archivo)
        lista_de_listas = procesar_csv(contenido)
        
        print(f"\nFelicidades al menos la ruta esta bien xD - Archivo procesado exitosamente")
        print(f"Filas Contadas: {len(lista_de_listas) - 1}")
        
        ##R007##
        print("\n" + "^-^ "*30)
        print("ITSJR: TEC DE SAN JUAN DEL RÍO")
        print("^-^ "*30)
        tec_info = buscar_tec_san_juan(lista_de_listas)
        
        if tec_info:
            print(f"\n¿En serio funciono? - Se encontro: ")
            print(f"  Nombre: {tec_info['nombre']}")
            print(f"  CV_CCT: {tec_info['CV_CCT']}")
            print(f"  Latitud: {tec_info['latitud']}")
            print(f"  Longitud: {tec_info['longitud']}")
        else:
            print("\nError 404 :( - No se encontró el Tec de San Juan del Río")
        
        print("\n" + "^-^ "*30)
        print("PROCESANDO DATOS +20 +20 +20 +30 ¡COMBO! ")
        print("^-^ "*30)
        
        ##R003##
        datos_filtrados = filtrar_por_estatus(lista_de_listas)
        print(f"Filas con estatus ¡ACTIVO!: {len(datos_filtrados) - 1}")
        
        ##R005##
        datos_email_valido = filtrar_por_email(datos_filtrados)
        print(f"Filas con email válido: {len(datos_email_valido) - 1}")
        
        ##R006##
        datos_telefono_valido = filtrar_por_telefonos(datos_email_valido)
        print(f"Filas con al menos un teléfono: {len(datos_telefono_valido) - 1}")
        
        ##R004##
        datos_sin_columnas = eliminar_columnas(datos_telefono_valido, columnas_a_eliminar)
        print(f"Columnas finales: {len(datos_sin_columnas[0]) if datos_sin_columnas else 0}")
        
        print(f"\nEjemplo - Primeras 5 líneas procesadas:")
        primeras_cinco = tomar_primeras_n(datos_sin_columnas, 6)
        lineas_enumeradas = enumerar_lista(primeras_cinco)
        imprimir_lineas(lineas_enumeradas)
        
        return datos_sin_columnas, tec_info
    else:
        print("La princesa esta en otro castillo - Archivo inexistente o en otra carpeta :c")
        return [], None


if __name__ == "__main__":
    print("CVs Examen 3")
    print("^-^ " * 30)
    datos, tec_info = run()