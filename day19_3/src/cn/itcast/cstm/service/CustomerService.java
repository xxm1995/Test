package cn.itcast.cstm.service;

import java.util.List;

import cn.itcast.cstm.dao.CustomerDao;
import cn.itcast.cstm.domain.Customer;
import cn.itcast.cstm.domain.PageBean;

/**
 * 业务层
 * @author cxf
 *
 */
public class CustomerService {
	private CustomerDao customerDao = new CustomerDao();
	
	/**
	 * 添加客户
	 * @param c
	 */
	public void add(Customer c) {
		customerDao.add(c);
	}
	
	/**
	 * 查询所有
	 * @return
	 */
	public PageBean<Customer> findAll(int pc, int ps) {
		return customerDao.findAll(pc, ps);
	}

	/**
	 * 加载客户
	 * @param cid
	 * @return
	 */
	public Customer load(String cid) {
		return customerDao.load(cid);
	}

	/**
	 * 编辑客户
	 * @param c
	 */
	public void edit(Customer c) {
		customerDao.edit(c);
	}

	/**
	 * 多条件组合查询
	 * @param criteria
	 * @return
	 */
	public PageBean<Customer> query(Customer criteria, int pc, int ps) {
		return customerDao.query(criteria, pc, ps);
	}
}
