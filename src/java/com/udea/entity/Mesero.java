/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JuanDavid
 */
@Entity
@Table(name = "mesero")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mesero.findAll", query = "SELECT m FROM Mesero m"),
    @NamedQuery(name = "Mesero.findByCedula", query = "SELECT m FROM Mesero m WHERE m.cedula = :cedula"),
    @NamedQuery(name = "Mesero.findByNombre", query = "SELECT m FROM Mesero m WHERE m.nombre = :nombre"),
    @NamedQuery(name = "Mesero.findByCorreo", query = "SELECT m FROM Mesero m WHERE m.correo = :correo"),
    @NamedQuery(name = "Mesero.findByTelefono", query = "SELECT m FROM Mesero m WHERE m.telefono = :telefono"),
    @NamedQuery(name = "Mesero.findBySalario", query = "SELECT m FROM Mesero m WHERE m.salario = :salario"),
    @NamedQuery(name = "Mesero.findByCalificaci\u00f3n", query = "SELECT m FROM Mesero m WHERE m.calificaci\u00f3n = :calificaci\u00f3n")})
public class Mesero implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cedula")
    private Integer cedula;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "correo")
    private String correo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 7)
    @Column(name = "telefono")
    private String telefono;
    @Basic(optional = false)
    @NotNull
    @Column(name = "salario")
    private int salario;
    @Column(name = "calificaci\u00f3n")
    private Integer calificación;
    @Lob
    @Column(name = "foto")
    private byte[] foto;

    public Mesero() {
    }

    public Mesero(Integer cedula) {
        this.cedula = cedula;
    }

    public Mesero(Integer cedula, String nombre, String correo, String telefono, int salario) {
        this.cedula = cedula;
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
        this.salario = salario;
    }

    public Integer getCedula() {
        return cedula;
    }

    public void setCedula(Integer cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

    public Integer getCalificación() {
        return calificación;
    }

    public void setCalificación(Integer calificación) {
        this.calificación = calificación;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cedula != null ? cedula.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mesero)) {
            return false;
        }
        Mesero other = (Mesero) object;
        if ((this.cedula == null && other.cedula != null) || (this.cedula != null && !this.cedula.equals(other.cedula))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.ejb.Mesero[ cedula=" + cedula + " ]";
    }
    
}
