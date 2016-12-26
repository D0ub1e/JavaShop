package com.hkwy.service.impl;

import java.util.List;

import com.hkwy.dao.IClientDao;
import com.hkwy.dao.impl.ClientDao;
import com.hkwy.model.Client;
import com.hkwy.model.Page;
import com.hkwy.model.UserException;
import com.hkwy.service.IClientService;
import com.hkwy.util.CodeUtil;

public class ClientService implements IClientService {
	private static IClientDao clientDao = new ClientDao();
	public void add(Client client) {
		// TODO Auto-generated method stub
		client.setPassword(CodeUtil.getMD5Encoding(client.getPassword()));
		clientDao.add(client);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		clientDao.delete(id);
	}

	public void update(Client client) {
		// TODO Auto-generated method stub
		client.setPassword(CodeUtil.getMD5Encoding(client.getPassword()));
		clientDao.update(client);
	}

	public Client load(int id) {
		// TODO Auto-generated method stub
		return clientDao.load(id);
	}

	public List<Client> list() {
		// TODO Auto-generated method stub
		return clientDao.list();
	}

	public Page<Client> pages() {
		// TODO Auto-generated method stub
		return clientDao.pages();
	}

	public Client login(String msg, String password) {
		// TODO Auto-generated method stub
		Client client = clientDao.login(msg);
		if(client == null) {
			throw new UserException("用户名不存在");
		}
		if(!client.getPassword().equals(CodeUtil.getMD5Encoding(password))) {
			throw new UserException("密码不正确");
		}
		return client;
	}

}
