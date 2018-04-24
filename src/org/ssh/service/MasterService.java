
package org.ssh.service;

import java.util.List;

import org.ssh.dao.BaseDao;
/**
 * 逕ｨ謌ｷ邂｡逅�荳壼苅騾ｻ霎醍噪螳樒鴫
 * */
public class MasterService<T> {
	
	private BaseDao dao;
	

	
	public List<T> queryMaster(String ymd,Class<T> clazz){
		if(ymd == null || "".equals(ymd)) 
			return dao.getAllObjects(clazz);

		String queryString = "SELECT m FROM maintenance m WHERE m.Pyakucd = '"+ymd +"'";
		
		return dao.getObjects(queryString);
	}

	
	//service方法
	public void addMaster(T master) throws Exception{
		dao.addObject(master);
	}
	
	
	
	public void modifyMaster(T master) throws Exception{
		dao.updateObject(master);
	}
	
	public void deleteMaster(int id,Class<T> clazz) throws Exception{
		T u = dao.getObject(clazz, id);
		dao.deleteObject(u);
	}
	
	public T getMaster(Class<T> master, String PYAKUCD){
		return dao.getObject(master, PYAKUCD);
	}
	
	public BaseDao getDao() {
		return dao;
	}

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}
}
