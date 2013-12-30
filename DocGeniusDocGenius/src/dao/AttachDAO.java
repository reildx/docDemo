package dao;

import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Attach;
import entity.Paper;

/**
 * A data access object (DAO) providing persistence and search support for
 * Attach entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see entity.Attach
 * @author MyEclipse Persistence Tools
 */

public class AttachDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(AttachDAO.class);
	// property constants
	public static final String PAPER_ID = "paperId";
	public static final String USER_ID = "userId";
	public static final String TYPE = "type";
	public static final String PATH = "path";

	protected void initDao() {
		// do nothing
	}

	public void save(Attach transientInstance) {
		log.debug("saving Attach instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Attach persistentInstance) {
		log.debug("deleting Attach instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Attach findById(java.lang.Integer id) {
		log.debug("getting Attach instance with id: " + id);
		try {
			Attach instance = (Attach) getHibernateTemplate().get(
					"entity.Attach", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Attach instance) {
		log.debug("finding Attach instance by example");
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
		log.debug("finding Attach instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Attach as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPaperId(Object paperId) {
		return findByProperty(PAPER_ID, paperId);
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findByPath(Object path) {
		return findByProperty(PATH, path);
	}

	public List findAll() {
		log.debug("finding all Attach instances");
		try {
			String queryString = "from Attach";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Attach merge(Attach detachedInstance) {
		log.debug("merging Attach instance");
		try {
			Attach result = (Attach) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Attach instance) {
		log.debug("attaching dirty Attach instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Attach instance) {
		log.debug("attaching clean Attach instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static AttachDAO getFromApplicationContext(ApplicationContext ctx) {
		return (AttachDAO) ctx.getBean("AttachDAO");
	}
	public void saveOrUpdate(Attach instance){
		this.getHibernateTemplate().saveOrUpdate(instance);
	}
}