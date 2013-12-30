package dao;

import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Comment;

/**
 * A data access object (DAO) providing persistence and search support for
 * Comment entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see entity.Comment
 * @author MyEclipse Persistence Tools
 */

public class CommentDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(CommentDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String PAPER_ID = "paperId";
	public static final String SIMPLE_COMMENT = "simpleComment";
	public static final String PROBLEM = "problem";
	public static final String IDEA = "idea";
	public static final String EXPERIMENT = "experiment";
	public static final String CONTRIBUTION = "contribution";
	public static final String IMPROVEMENT = "improvement";
	public static final String SCORE = "score";
	public static final String IS_PUBLIC = "isPublic";

	protected void initDao() {
		// do nothing
	}

	public void save(Comment transientInstance) {
		log.debug("saving Comment instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Comment persistentInstance) {
		log.debug("deleting Comment instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Comment findById(java.lang.Integer id) {
		log.debug("getting Comment instance with id: " + id);
		try {
			Comment instance = (Comment) getHibernateTemplate().get(
					"entity.Comment", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Comment instance) {
		log.debug("finding Comment instance by example");
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
		log.debug("finding Comment instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Comment as model where model."
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

	public List findByPaperId(Object paperId) {
		return findByProperty(PAPER_ID, paperId);
	}

	public List findBySimpleComment(Object simpleComment) {
		return findByProperty(SIMPLE_COMMENT, simpleComment);
	}

	public List findByProblem(Object problem) {
		return findByProperty(PROBLEM, problem);
	}

	public List findByIdea(Object idea) {
		return findByProperty(IDEA, idea);
	}

	public List findByExperiment(Object experiment) {
		return findByProperty(EXPERIMENT, experiment);
	}

	public List findByContribution(Object contribution) {
		return findByProperty(CONTRIBUTION, contribution);
	}

	public List findByImprovement(Object improvement) {
		return findByProperty(IMPROVEMENT, improvement);
	}

	public List findByScore(Object score) {
		return findByProperty(SCORE, score);
	}

	public List findByIsPublic(Object isPublic) {
		return findByProperty(IS_PUBLIC, isPublic);
	}

	public List findAll() {
		log.debug("finding all Comment instances");
		try {
			String queryString = "from Comment";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Comment merge(Comment detachedInstance) {
		log.debug("merging Comment instance");
		try {
			Comment result = (Comment) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Comment instance) {
		log.debug("attaching dirty Comment instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Comment instance) {
		log.debug("attaching clean Comment instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	public void saveOrUpdate(Comment instance){
		this.getHibernateTemplate().saveOrUpdate(instance);
	}

	public static CommentDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CommentDAO) ctx.getBean("CommentDAO");
	}
}