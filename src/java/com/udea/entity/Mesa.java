/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
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
@Table(name = "mesa")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mesa.findAll", query = "SELECT m FROM Mesa m"),
    @NamedQuery(name = "Mesa.findByCod", query = "SELECT m FROM Mesa m WHERE m.mesaPK.cod = :cod"),
    @NamedQuery(name = "Mesa.findByMesero", query = "SELECT m FROM Mesa m WHERE m.mesero = :mesero"),
    @NamedQuery(name = "Mesa.findByCapacidad", query = "SELECT m FROM Mesa m WHERE m.capacidad = :capacidad"),
    @NamedQuery(name = "Mesa.findByEstado", query = "SELECT m FROM Mesa m WHERE m.estado = :estado"),
    @NamedQuery(name = "Mesa.findBySede", query = "SELECT m FROM Mesa m WHERE m.mesaPK.sede = :sede")})
public class Mesa implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected MesaPK mesaPK;
    @Size(max = 10)
    @Column(name = "mesero")
    private String mesero;
    @Basic(optional = false)
    @NotNull
    @Column(name = "capacidad")
    private int capacidad;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "estado")
    private String estado;

    public Mesa() {
    }

    public Mesa(MesaPK mesaPK) {
        this.mesaPK = mesaPK;
    }

    public Mesa(MesaPK mesaPK, int capacidad, String estado) {
        this.mesaPK = mesaPK;
        this.capacidad = capacidad;
        this.estado = estado;
    }

    public Mesa(String cod, String sede) {
        this.mesaPK = new MesaPK(cod, sede);
    }

    public MesaPK getMesaPK() {
        return mesaPK;
    }

    public void setMesaPK(MesaPK mesaPK) {
        this.mesaPK = mesaPK;
    }

    public String getMesero() {
        return mesero;
    }

    public void setMesero(String mesero) {
        this.mesero = mesero;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mesaPK != null ? mesaPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mesa)) {
            return false;
        }
        Mesa other = (Mesa) object;
        if ((this.mesaPK == null && other.mesaPK != null) || (this.mesaPK != null && !this.mesaPK.equals(other.mesaPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.entity.Mesa[ mesaPK=" + mesaPK + " ]";
    }
    
}
