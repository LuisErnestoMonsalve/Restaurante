/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author JuanDavid
 */
@Embeddable
public class MesaPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "cod")
    private String cod;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "sede")
    private String sede;

    public MesaPK() {
    }

    public MesaPK(String cod, String sede) {
        this.cod = cod;
        this.sede = sede;
    }

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getSede() {
        return sede;
    }

    public void setSede(String sede) {
        this.sede = sede;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cod != null ? cod.hashCode() : 0);
        hash += (sede != null ? sede.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MesaPK)) {
            return false;
        }
        MesaPK other = (MesaPK) object;
        if ((this.cod == null && other.cod != null) || (this.cod != null && !this.cod.equals(other.cod))) {
            return false;
        }
        if ((this.sede == null && other.sede != null) || (this.sede != null && !this.sede.equals(other.sede))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.entity.MesaPK[ cod=" + cod + ", sede=" + sede + " ]";
    }
    
}
