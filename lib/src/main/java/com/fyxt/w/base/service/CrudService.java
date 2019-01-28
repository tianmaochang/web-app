package com.fyxt.w.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.fyxt.w.base.dao.CrudDao;
import com.fyxt.w.base.entity.BaseEntity;
import com.fyxt.w.entity.common.Page;

/**
 * CRUD Service 基类
* @author ZhangBo   
* @date 2015年7月29日 上午10:14:57
 */
public abstract class CrudService<D extends CrudDao<T>, T extends BaseEntity> extends BaseService {
	
	@Autowired
	protected D dao;
	
	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public T get(Long id) {
		return dao.get(id);
	}
	
	/**
	 * 获取单条数据
	 * @param entity
	 * @return
	 */
	public T getEntity(T entity) {
		return dao.getEntity(entity);
	}
	
	/**
	 * 查询列表数据
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity) {
		return dao.findList(entity);
	}
	
	/**
	 * 查询所有数据
	 * @param entity
	 * @return
	 */
	public List<T> findAllCond(T entity){
	    return dao.findAllCond(entity);
	}
	
	/**
	 * 查询所有数据
	 * @return
	 */
	public List<T> findAll(){
	    return dao.findAll();
	}
	
	/**
	 * 查询分页数据
	 * @param entity
	 * @return
	 */
	
	public Page<T> findPage(T entity) {
	    Page<T> page = dao.findPage(entity);
	    page.setEntity(entity);
		return page;
	}

	/**
	 * 查询分页数据+条件
	 * @param entity
	 * @return
	 */

	public Page<T> findPageCond(T entity) {
		Page<T> page = dao.findPageCond(entity);
		page.setEntity(entity);
		return page;
	}

	/**
	 * 保存数据（插入或更新）
	 * @param entity
	 */
	public int save(T entity) {
	    if(entity.getId() != null){
	        return dao.update(entity);
	    }
	    return dao.insert(entity);
	}
	
	/**
	 * 批量插入数据
	 * @param entitys
	 * @return
	 */
	public int saveBatch(List<T> entitys){
	    return dao.insertBatch(entitys);
	}
	
	/**
	 * 更新数据
	 * @param entity
	 * @return
	 */
	public int update(T entity) {
        return dao.update(entity);
    }
	
	/**
	 * 批量更新数据
	 * @param entitys
	 * @return
	 */
	public int updateBatch(List<T> entitys){
	    return dao.updateBatch(entitys);
	}
	
	/**
	 * 删除数据
	 * @param entity
	 */
	public int deleteEntity(T entity) {
		return dao.deleteEntity(entity);
	}
	
	/**
	 * 删除数据
	 * @param id
	 * @return
	 */
	public int delete(Long id) {
        return dao.delete(id);
    }
	
	/**
	 * 删除所有
	 * @return
	 */
	public int deleteAll(){
	    return dao.deleteAll();
	}
}
