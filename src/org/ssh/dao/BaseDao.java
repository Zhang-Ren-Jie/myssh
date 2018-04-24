package org.ssh.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * 数据库io操作
 */
public class BaseDao extends HibernateDaoSupport {

	
	public <T> List<T> getObjects(String queryString){
		return (List<T>)this.getHibernateTemplate().find(queryString);
	}

	public <T> List<T> getAllObjects(Class<T> clazz){
		return this.getHibernateTemplate().loadAll(clazz);
	}
	
	

	public <T> void addObject(T clazz){
		this.getHibernateTemplate().save(clazz);
	}
	

	public <T> void updateObject(T clazz){
		this.getHibernateTemplate().update(clazz);
	}


	public <T> void deleteObject(T clazz){
		this.getHibernateTemplate().delete(clazz);
	}
	

	public <T> T getObject(Class<T> clazz,Serializable id){
		return this.getHibernateTemplate().get(clazz, id);
	}
	
	public <T> T getObjectS(Class<T> clazz,String PYAKUCD){
		return this.getHibernateTemplate().get(clazz, PYAKUCD);
	}

}