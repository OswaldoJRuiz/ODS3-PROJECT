package com.snapshot.tareasalgoritmia;

import java.util.Scanner;

public class MetodoBurbujaEstudiantes {
    
    private String codigo, nombre, apellido;
    private int semestre, dia, mes, año;
    private double calificacion;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingrese la cantidad de estudiantes: ");
        int n = scanner.nextInt();
        scanner.nextLine();

        MetodoBurbujaEstudiantes[] estudiantes = new MetodoBurbujaEstudiantes[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Ingrese la información del estudiante " + (i + 1) + ":");
            System.out.print("Código: ");
            String codigo = scanner.nextLine();
            System.out.print("Nombre: ");
            String nombre = scanner.nextLine();
            System.out.print("Apellido: ");
            String apellido = scanner.nextLine();
            System.out.print("Semestre: ");
            int semestre = scanner.nextInt();
            System.out.print("Calificación: ");
            double calificacion = scanner.nextDouble();
            System.out.print("Día de nacimiento: ");
            int dia = scanner.nextInt();
            System.out.print("Mes de nacimiento: ");
            int mes = scanner.nextInt();
            System.out.print("Año de nacimiento: ");
            int año = scanner.nextInt();
            scanner.nextLine();
            estudiantes[i] = new MetodoBurbujaEstudiantes(codigo, nombre, apellido, semestre, calificacion, dia, mes, año);
        }

        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (estudiantes[j].Mayor(estudiantes[j + 1])) {
                    MetodoBurbujaEstudiantes temp = estudiantes[j];
                    estudiantes[j] = estudiantes[j + 1];
                    estudiantes[j + 1] = temp;
                }
            }
        }

        System.out.println("\nLista de estudiantes ordenada por fecha de nacimiento:");
        for (MetodoBurbujaEstudiantes estudiante : estudiantes) {
            System.out.println(estudiante);
        }

        scanner.close();
    }

    public MetodoBurbujaEstudiantes(String codigo, String nombre, String apellido, int semestre,
    double calificacion, int dia, int mes, int año) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.semestre = semestre;
        this.calificacion = calificacion;
        this.dia = dia;
        this.mes = mes;
        this.año = año;
    }

    public boolean Mayor(MetodoBurbujaEstudiantes otro) {
        if (this.año > otro.año) {
            return true;
        } else if (this.año == otro.año) {
            if (this.mes > otro.mes) {
                return true;
            } else if (this.mes == otro.mes) {
                return this.dia > otro.dia;
            }
        }
        return false;
    }

    @Override
    public String toString() {
        return "Código: " + codigo + ", Nombre: " + nombre + " " + apellido + ", Semestre: " + semestre +
               ", Calificación: " + calificacion + ", Fecha de nacimiento: " + dia + "/" + mes + "/" + año;
    }
}