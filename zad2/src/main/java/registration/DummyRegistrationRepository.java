package registration;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import domain.Registration;


public class DummyRegistrationRepository implements RegistrationRepository {
	private static List<Registration> db = new ArrayList<Registration>();

	@Override
	public Registration getRegistrationByLogin(String login) {
		for (Registration registration : db) {
			if (registration.getLogin().equalsIgnoreCase(login))
				return registration;
		}
		return null;
	}
	@Override
	public Boolean checkPassword (String login, String password) {
		Registration userData = getRegistrationByLogin(login);
		if (userData != null && userData.getPassword().equals(password)) {
			return true;
		} else return false;
	}
	@Override
	public List<Registration> GetAllUsersData() {	
		return db;
	}
	@Override
	public void add(Registration registration) {
		db.add(registration);

	}
	@Override
	public void updatePremiumStatus (String[] loginList, String[] checkedList) {
		for (String login : loginList) {
			Registration userData = getRegistrationByLogin(login);
			userData.setIsPremium(Arrays.asList(checkedList).contains(login));
		}
	}

	@Override
	public int count() {
		return db.size();
	}
}
