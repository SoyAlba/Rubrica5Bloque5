package com.biblioteca.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.biblioteca.demo.model.libro;
@Service
public class serviceLibro {
    static List<libro> list = new ArrayList<>();
    static{
        list.add(new libro(1, "El principito", "123456789", 1));
        list.add(new libro(2, "El señor de los anillos", "123456789", 2));
        list.add(new libro(3, "El hobbit", "123456789", 3));
    }
    public List<libro> getAllLibros() {
        return list;
    }
    public void crearLibro(libro libro) {
        list.add(libro);
    }

    public List<libro> buscarLibro(String isbn, String titulo) {
        List<libro> librosBuscados = new ArrayList<>();
        for (libro libro : list) {
            if (libro.getIsbn().equals(isbn)) {
                librosBuscados.add(libro);
            }else{
                System.out.println("No se encontro el libro");
            }
        }
        for (libro libro : list) {
            if (libro.getTitulo().equals(titulo)) {
                librosBuscados.add(libro);
            }else{
                System.out.println("No se encontro el libro");
            }
        }
        return librosBuscados;
    }

    public void eliminarLibro(int id) {
        for (libro libro : list) {
            if (libro.getId() == id) {
                list.remove(libro);
                break;
            }
        }
    }
    
}
