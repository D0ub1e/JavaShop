package com.hkwy.dao;

import com.hkwy.model.Client;

public interface IClientDao extends IBaseDao<Client>{
	public void add(Client client);
	public Client login(String msg);
}
