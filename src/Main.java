


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Poligono {
    private String tipo;
    private double lado;
    private double area;

    public Poligono(String tipo, double lado) {
        this.tipo = tipo;
        this.lado = lado;
        calcularArea();
    }

    private void calcularArea() {
        if (tipo.equals("Triângulo")) {
            area = (Math.sqrt(3) / 4) * lado * lado;
        } else if (tipo.equals("Quadrado")) {
            area = lado * lado;
        }
    }

    public String toString() {
        return tipo + " de lado " + lado + " cm e área " + String.format("%.2f", area) + " cm2";
    }

    public double getArea() {
        return area;
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Poligono> poligonos = new ArrayList<>();

        while (true) {
            System.out.print(
                    "Informe o número de lados do polígono:\n( 1 ) - para triângulo:    \n( 2 ) - Para quadrado:\n( 0 ) - Para sair e mostrar resultado: ");
            int numLados = scanner.nextInt();

            if (numLados == 0) {
                break;
            } else if (numLados == 1 || numLados == 2) {
                System.out.print("Informe o tamanho do lado (em cm): ");
                double tamanhoLado = scanner.nextDouble();

                if (tamanhoLado <= 0) {
                    System.out.println("Tamanho do lado inválido. Deve ser maior que zero. Tente novamente.");
                    continue;
                }

                String tipoPoligono = (numLados == 3) ? "Triângulo" : "Quadrado";
                poligonos.add(new Poligono(tipoPoligono, tamanhoLado));
            } else if(numLados > 2) {
                System.out.println("Número inválido.\nVocê digitou um número superior ao esperado.\nTente novamente.");
            } if(numLados < 0) {
                System.out.println("Número inválido.\nVocê digitou um número inferior ao esperado.\nTente novamente.");
            }
        }

        System.out.println("Polígonos inseridos:");

        for (Poligono poligono : poligonos) {
            System.out.println(poligono);
        }

        double areaTotal = 0;

        for (Poligono poligono : poligonos) {
            areaTotal += poligono.getArea();
        }

        System.out.println("Área total " + String.format("%.2f", areaTotal) + " cm2");
    }
}
