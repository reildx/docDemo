package dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Typeconfig;
import entity.Typeinfoconfig;

/**
 * A data access object (DAO) providing persistence and search support for
 * Typeinfoconfig entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see entity.Typeinfoconfig
 * @author MyEclipse Persistence Tools
 */

public class TypeinfoconfigDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TypeinfoconfigDAO.class);
	// property constants
	public static final String COLUMN_NAME = "columnName";
	public static final String TYPE = "type";
	public static final String DESCRIPTION = "description";

	protected void initDao() {
		// do nothing
	}

	public void save(Typeinfoconfig transientInstance) {
		log.debug("saving Typeinfoconfig instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Typeinfoconfig persistentInstance) {
		log.debug("deleting Typeinfoconfig instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Typeinfoconfig findById(java.lang.Integer id) {
		log.debug("getting Typeinfoconfig instance with id: " + id);
		try {
			Typeinfoconfig instance = (Typeinfoconfig) getHibernateTemplate()
					.get("entity.Typeinfoconfig", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Typeinfoconfig instance) {
		log.debug("finding Typeinfoconfig instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Typeinfoconfig instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Typeinfoconfig as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByColumnName(Object columnName) {
		return findByProperty(COLUMN_NAME, columnName);
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List findAll() {
		log.debug("finding all Typeinfoconfig instances");
		try {
			String queryString = "from Typeinfoconfig";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Typeinfoconfig merge(Typeinfoconfig detachedInstance) {
		log.debug("merging Typeinfoconfig instance");
		try {
			Typeinfoconfig result = (Typeinfoconfig) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Typeinfoconfig instance) {
		log.debug("attaching dirty Typeinfoconfig instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Typeinfoconfig instance) {
		log.debug("attaching clean Typeinfoconfig instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void saveOrUpdate(Typeinfoconfig instance){
		this.getHibernateTemplate().saveOrUpdate(instance);
	}
	
	public static TypeinfoconfigDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (TypeinfoconfigDAO) ctx.getBean("TypeinfoconfigDAO");
	}
}