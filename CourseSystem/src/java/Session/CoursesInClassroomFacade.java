/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import Entity.CoursesInClassroom;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author ASUS
 */
@Stateless
public class CoursesInClassroomFacade extends AbstractFacade<CoursesInClassroom> {

    @PersistenceContext(unitName = "CourseSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CoursesInClassroomFacade() {
        super(CoursesInClassroom.class);
    }
    
}
