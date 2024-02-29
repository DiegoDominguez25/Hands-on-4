listar_contenido(){
	read -p "Ingrese la ruta absoluta para el fichero: " ruta
	ls -l "$ruta"
}

crear_archivo(){
	read -p "Ingrese la cadena de texto a almacenar en el archivo: " texto
	echo "$texto" > archivo_creado.txt
	echo "Archivo creado"
}

comparar_archivos(){
	read -p "Ingrese la ruta absoluta del primer archivo: " archivo1
	read -p "Ingrese la ruta absoluta del segundo archivo: " archivo2
	diff "$archivo1" "$archivo2"
}

uso_awk(){
	echo "Ejemplo de uso de awk:"
    	echo "Supongamos que tenemos un archivo llamado 'datos.txt' con el siguiente contenido:"
    	echo "Juan 25"
    	echo "Pedro"
    	echo "Pan"
    	echo "awk '{print \$1}' datos.txt"
    	echo "El comando anterior imprimirá la primera columna del archivo 'datos.txt'."
    	echo "Resultado:"
    	awk '{print $1}' datos.txt
}

uso_grep(){
	echo "Ejemplo de uso de grep:"
    	echo "Supongamos que tenemos un archivo llamado 'texto.txt' con el siguiente contenido:"
    	echo "Este es un texto de ejemplo."
    	echo "Aquí hay otra línea con otro ejemplo."
    	echo "Y aquí hay una tercera línea."
    	echo "Ejemplo dentro de ejemplo"
    	echo "grep 'ejemplo' texto.txt"
    	echo "Este comando buscará la palabra 'ejemplo' en el archivo 'texto.txt' y mostrará las líneas que lo contienen."
    	echo "Resultado:"
    	grep 'ejemplo' texto.txt
}

while true; do
	echo "Menu de servicios"
	echo "1. Listar contenido de fichero"
	echo "2. Crear un archivo de texto con solo una linea de texto"
	echo "3. Comparar dos archivos de texto"
	echo "4. Mostrar uso awk"
	echo "5. Mostrar uso grep"
	echo "6. Salir"

	read -p "Ingrese una opcion: " opcion
	
	case $opcion in 
	1) listar_contenido;;
	2) crear_archivo;;
	3) comparar_archivos;;
	4) uso_awk;;
	5) uso_grep;;
	6) echo "Saliendo del menu"
		exit 0;;
	esac

	echo ""
done
