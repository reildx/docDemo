package dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Typeconfig;

/**
 * A data access object (DAO) providing persistence and search support for
 * Typeconfig entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see entity.Typeconfig
 * @author MyEclipse Persistence Tools
 */

public class TypeconfigDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TypeconfigDAO.class);
	// property constants
	public static final String TYPE = "type";

	protected void initDao() {
		// do nothing
	}

	public void save(Typeconfig transientInstance) {
		log.debug("saving Typeconfig instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Typeconfig persistentInstance) {
		log.debug("deleting Typeconfig instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Typeconfig findById(java.lang.Integer id) {
		log.debug("getting Typeconfig instance with id: " + id);
		try {
			Typeconfig instance = (Typeconfig) getHibernateTemplate().get(
					"entity.Typeconfig", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Typeconfig instance) {
		log.debug("finding Typeconfig instance by example");
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
		log.debug("finding Typeconfig instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Typeconfig as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findAll() {
		log.debug("finding all Typeconfig instances");
		try {
			String queryString = "from Typeconfig";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Typeconfig merge(Typeconfig detachedInstance) {
		log.debug("merging Typeconfig instance");
		try {
			Typeconfig result = (Typeconfig) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Typeconfig instance) {
		log.debug("attaching dirty Typeconfig instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Typeconfig instance) {
		log.debug("attaching clean Typeconfig instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	public void saveOrUpdate(Typeconfig instance){
		this.getHibernateTemplate().saveOrUpdate(instance);
	}
	
	public static TypeconfigDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TypeconfigDAO) ctx.getBean("TypeconfigDAO");
	}
}