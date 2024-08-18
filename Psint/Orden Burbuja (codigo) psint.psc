Algoritmo Ordenamiento_Burbuja
    Definir i, j, t, n Como Entero
    Escribir "Ingrese el número de elementos del arreglo:"
    Leer n
    Dimension arreglo[n]
	
    Escribir "Ingrese los elementos del arreglo:"
    Para i <- 1 Hasta n Hacer
        Leer arreglo[i]
    Fin Para
	
    Para i <- 1 Hasta n-1 Hacer
        Para j <- 1 Hasta n-i Hacer
            Si arreglo[j] > arreglo[j+1] Entonces
                // Intercambio de elementos //
                t = arreglo[j]
                arreglo[j] = arreglo[j+1]
                arreglo[j+1] = t
            Fin Si
        Fin Para
    Fin Para
	
    Escribir "Arreglo ordenado:"
    Para i <- 1 Hasta n Hacer
        Escribir arreglo[i]
    Fin Para
FinAlgoritmo