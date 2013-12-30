package dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Paper;
import entity.Typeconfig;

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
	public static final String SCORE = "score";
	public static final String COLUMN1 = "column1";
	public static final String COLUMN2 = "column2";
	public static final String COLUMN3 = "column3";
	public static final String COLUMN4 = "column4";
	public static final String COLUMN5 = "column5";
	public static final String COLUMN6 = "column6";
	public static final String COLUMN7 = "column7";
	public static final String COLUMN8 = "column8";
	public static final String COLUMN9 = "column9";
	public static final String COLUMN10 = "column10";
	public static final String COLUMN11 = "column11";
	public static final String COLUMN12 = "column12";
	public static final String COLUMN13 = "column13";
	public static final String COLUMN14 = "column14";
	public static final String COLUMN15 = "column15";
	public static final String COLUMN16 = "column16";
	public static final String COLUMN17 = "column17";
	public static final String COLUMN18 = "column18";
	public static final String COLUMN19 = "column19";
	public static final String COLUMN20 = "column20";
	public static final String COLUMN21 = "column21";
	public static final String COLUMN22 = "column22";
	public static final String COLUMN23 = "column23";
	public static final String COLUMN24 = "column24";
	public static final String COLUMN25 = "column25";
	public static final String COLUMN26 = "column26";
	public static final String COLUMN27 = "column27";
	public static final String COLUMN28 = "column28";
	public static final String COLUMN29 = "column29";
	public static final String COLUMN30 = "column30";
	public static final String COLUMN31 = "column31";
	public static final String COLUMN32 = "column32";
	public static final String COLUMN33 = "column33";
	public static final String COLUMN34 = "column34";
	public static final String COLUMN35 = "column35";
	public static final String COLUMN36 = "column36";
	public static final String COLUMN37 = "column37";
	public static final String COLUMN38 = "column38";
	public static final String COLUMN39 = "column39";
	public static final String COLUMN40 = "column40";

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

	public List findByScore(Object score) {
		return findByProperty(SCORE, score);
	}

	public List findByColumn1(Object column1) {
		return findByProperty(COLUMN1, column1);
	}

	public List findByColumn2(Object column2) {
		return findByProperty(COLUMN2, column2);
	}

	public List findByColumn3(Object column3) {
		return findByProperty(COLUMN3, column3);
	}

	public List findByColumn4(Object column4) {
		return findByProperty(COLUMN4, column4);
	}

	public List findByColumn5(Object column5) {
		return findByProperty(COLUMN5, column5);
	}

	public List findByColumn6(Object column6) {
		return findByProperty(COLUMN6, column6);
	}

	public List findByColumn7(Object column7) {
		return findByProperty(COLUMN7, column7);
	}

	public List findByColumn8(Object column8) {
		return findByProperty(COLUMN8, column8);
	}

	public List findByColumn9(Object column9) {
		return findByProperty(COLUMN9, column9);
	}

	public List findByColumn10(Object column10) {
		return findByProperty(COLUMN10, column10);
	}

	public List findByColumn11(Object column11) {
		return findByProperty(COLUMN11, column11);
	}

	public List findByColumn12(Object column12) {
		return findByProperty(COLUMN12, column12);
	}

	public List findByColumn13(Object column13) {
		return findByProperty(COLUMN13, column13);
	}

	public List findByColumn14(Object column14) {
		return findByProperty(COLUMN14, column14);
	}

	public List findByColumn15(Object column15) {
		return findByProperty(COLUMN15, column15);
	}

	public List findByColumn16(Object column16) {
		return findByProperty(COLUMN16, column16);
	}

	public List findByColumn17(Object column17) {
		return findByProperty(COLUMN17, column17);
	}

	public List findByColumn18(Object column18) {
		return findByProperty(COLUMN18, column18);
	}

	public List findByColumn19(Object column19) {
		return findByProperty(COLUMN19, column19);
	}

	public List findByColumn20(Object column20) {
		return findByProperty(COLUMN20, column20);
	}

	public List findByColumn21(Object column21) {
		return findByProperty(COLUMN21, column21);
	}

	public List findByColumn22(Object column22) {
		return findByProperty(COLUMN22, column22);
	}

	public List findByColumn23(Object column23) {
		return findByProperty(COLUMN23, column23);
	}

	public List findByColumn24(Object column24) {
		return findByProperty(COLUMN24, column24);
	}

	public List findByColumn25(Object column25) {
		return findByProperty(COLUMN25, column25);
	}

	public List findByColumn26(Object column26) {
		return findByProperty(COLUMN26, column26);
	}

	public List findByColumn27(Object column27) {
		return findByProperty(COLUMN27, column27);
	}

	public List findByColumn28(Object column28) {
		return findByProperty(COLUMN28, column28);
	}

	public List findByColumn29(Object column29) {
		return findByProperty(COLUMN29, column29);
	}

	public List findByColumn30(Object column30) {
		return findByProperty(COLUMN30, column30);
	}

	public List findByColumn31(Object column31) {
		return findByProperty(COLUMN31, column31);
	}

	public List findByColumn32(Object column32) {
		return findByProperty(COLUMN32, column32);
	}

	public List findByColumn33(Object column33) {
		return findByProperty(COLUMN33, column33);
	}

	public List findByColumn34(Object column34) {
		return findByProperty(COLUMN34, column34);
	}

	public List findByColumn35(Object column35) {
		return findByProperty(COLUMN35, column35);
	}

	public List findByColumn36(Object column36) {
		return findByProperty(COLUMN36, column36);
	}

	public List findByColumn37(Object column37) {
		return findByProperty(COLUMN37, column37);
	}

	public List findByColumn38(Object column38) {
		return findByProperty(COLUMN38, column38);
	}

	public List findByColumn39(Object column39) {
		return findByProperty(COLUMN39, column39);
	}

	public List findByColumn40(Object column40) {
		return findByProperty(COLUMN40, column40);
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