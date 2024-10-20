package Modelo;

public class Usuario {
    private int id;
    private String nombre;
    private String telefono;
    private String user;  // Este es el nombre de usuario //
    private String correo;
    private String contraseña;

    // Constructor vacío //
    public Usuario() {
    }

    // Constructor con todos los datos //
    public Usuario(int id, String nombre, String telefono, String user, String correo, String contraseña) {
        this.id = id;
        this.nombre = nombre;
        this.telefono = telefono;
        this.user = user;
        this.correo = correo;
        this.contraseña = contraseña;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public String getUsername() {
        return user;
    }

    public void setUsername(String user) {
        this.user = user;
    }
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
}