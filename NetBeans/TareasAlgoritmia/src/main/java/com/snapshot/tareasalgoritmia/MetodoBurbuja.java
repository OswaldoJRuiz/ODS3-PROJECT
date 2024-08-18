package com.snapshot.tareasalgoritmia;

import java.util.Scanner;

public class MetodoBurbuja {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Ingresa el tamaño del arreglo");
        int tam = scanner.nextInt();
        
        int[] arr = new int[tam];
        
        for (int i = 0; i < tam; i++) {
            System.out.println("Ingresa el numero para esta posición » " + i + "");
            arr[i] = scanner.nextInt();
        }
        
        for (int i = 0; i < tam - 1; i++) {
            for (int j = 0; j < tam -1 -i; j++) {
                if (arr[j] > arr[j + 1]) {
                    int mnt = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = mnt;
                }
            }
        }
        System.out.println("Este es el arreglo con el metodo burbuja");
        for (int num : arr) {
            System.out.println(num + " ");
        }
        scanner.close();
    }
}