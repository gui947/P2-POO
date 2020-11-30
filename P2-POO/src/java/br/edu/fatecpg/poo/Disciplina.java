package br.edu.fatecpg.poo;

public class Disciplina {
    
    private String na;
    private long ra;
    private int qtd;
    private String name;
    private String ementa;
    private int ciclo;
    private double nota;
    
    public Disciplina(String na, long ra, int qtd, String name, String ementa, int ciclo, double nota){
        this.na = na;
        this.ra = ra;
        this.qtd = qtd;
        this.name = name;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }
    public String getNameAluno(){
        return na;
    }
    public void setNameAluno(String na){
        this.na = na;
    }
    public long getRa(){
        return ra;
    }
    public void setRa(int ra){
        this.ra = ra;
    }
    public int getQtd(){
        return qtd;
    }
    public void setQtd(int qtd){
        this.qtd = qtd;
    }
    public String getName(){
        return name;
    }
    public void setNome(String name){
        this.name = name; 
    }
    public String getEmenta(){
        return ementa;
    }
    public void setEmenta(String ementa){
        this.ementa = ementa;
    }
    public int getCiclo(){
        if(ciclo<1)
            this.ciclo = 1;
        else if (ciclo>6)
            this.ciclo = 6;
        else 
            this.ciclo = ciclo;
        return ciclo;
    }
    public void setCiclo(int ciclo){
        this.ciclo = ciclo;
    }
    public double getNota(){
        if(nota<0)
            this.nota = 0;
        else if (nota>10)
            this.nota = 10;
        else 
            this.nota = nota;
        return nota;
    }
    public void setNota(double nota){
        this.nota = nota;
    }
}

