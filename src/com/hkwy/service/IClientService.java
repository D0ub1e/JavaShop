package com.hkwy.service;

import java.util.List;

import com.hkwy.model.Client;
import com.hkwy.model.Page;

public interface IClientService {
	public void add(Client client);
	public void delete(int id);
	public void update(Client client);
	public Client load(int id);
	public List<Client> list();
	public Page<Client> pages();
	public Client login(String msg, String password);

}
