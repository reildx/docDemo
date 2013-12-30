package dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Paper;

/**
 * A data access object (DAO) providing persistence and search support for Paper
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see entity.Paper
 * @author MyEclipse Persistence Tools
 */

public class PaperDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(PaperDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String TYPE = "type";
	public static final String TITLE = "title";
	public static final String AUTHOR = "author";
	public static final String YEAR = "year";
	public static final String PAGES = "pages";
	public static final String ABSTRACT_ = "abstract_";
	public static final String KEYWORDS = "keywords";
	public static final String URL = "url";
	public static final String PUBLISHER = "publisher";
	public static final String TIPS = "tips";

	protected void initDao() {
		// do nothing
	}

	public void save(Paper transientInstance) {
		log.debug("saving Paper instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Paper persistentInstance) {
		log.debug("deleting Paper instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Paper findById(java.lang.Integer id) {
		log.debug("getting Paper instance with id: " + id);
		try {
			Paper instance = (Paper) getHibernateTemplate().get("entity.Paper",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Paper instance) {
		log.debug("finding Paper instance by example");
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
		log.debug("finding Paper instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Paper as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByAuthor(Object author) {
		return findByProperty(AUTHOR, author);
	}

	public List findByYear(Object year) {
		return findByProperty(YEAR, year);
	}

	public List findByPages(Object pages) {
		return findByProperty(PAGES, pages);
	}

	public List findByAbstract_(Object abstract_) {
		return findByProperty(ABSTRACT_, abstract_);
	}

	public List findByKeywords(Object keywords) {
		return findByProperty(KEYWORDS, keywords);
	}

	public List findByUrl(Object url) {
		return findByProperty(URL, url);
	}

	public List findByPublisher(Object publisher) {
		return findByProperty(PUBLISHER, publisher);
	}

	public List findByTips(Object tips) {
		return findByProperty(TIPS, tips);
	}

	public List findAll() {
		log.debug("finding all Paper instances");
		try {
			String queryString = "from Paper";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Paper merge(Paper detachedInstance) {
		log.debug("merging Paper instance");
		try {
			Paper result = (Paper) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Paper instance) {
		log.debug("attaching dirty Paper instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Paper instance) {
		log.debug("attaching clean Paper instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	public void saveOrUpdate(Paper instance){
		this.getHibernateTemplate().saveOrUpdate(instance);
	}

	public static PaperDAO getFromApplicationContext(ApplicationContext ctx) {
		return (PaperDAO) ctx.getBean("PaperDAO");
	}
}