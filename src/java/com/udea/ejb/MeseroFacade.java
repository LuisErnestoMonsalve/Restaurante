/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Mesero;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author JuanDavid
 */
@Stateless
public class MeseroFacade extends AbstractFacade<Mesero> implements MeseroFacadeLocal {

    @PersistenceContext(unitName = "RestaurantesWebPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MeseroFacade() {
        super(Mesero.class);
    }
    
}
