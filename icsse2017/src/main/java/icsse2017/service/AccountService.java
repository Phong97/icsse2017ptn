package icsse2017.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import icsse2017.dao.AccountRepository;
import icsse2017.model.Account;

@Service
@Transactional
public class AccountService {

	private final AccountRepository accountRepository;

	public AccountService(AccountRepository accountRepository) {
		super();
		this.accountRepository = accountRepository;
	}
	
	public List<Account> findAll(){
		List<Account> accounts = new ArrayList<>();
		for(Account account:accountRepository.findAll()) {
			accounts.add(account);
		}
		
		return accounts;
	}
	
	public Account findAccount(int id) {
		return accountRepository.findOne(id);
	}
	
	public void save(Account account) {
		accountRepository.save(account);
	}
	
	public void delete (int id) {
		accountRepository.delete(id);
	}
	
	public Account CheckLogin (@RequestParam String username,@RequestParam String password) {
		for(Account account:accountRepository.findAll()) {
			if(account.getUsername().equals(username) && account.getPassword().equals(password))
			{
				return account;
			}
		}
		return null;
	}
}