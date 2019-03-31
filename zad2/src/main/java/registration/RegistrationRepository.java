package registration;

import java.util.List;

public interface RegistrationRepository {
	Registration getRegistrationByLogin (String login);
	Boolean checkPassword (String login, String password);
	void add(Registration registration);
	int count();
	List<Registration> GetAllUsersData();
	void updatePremiumStatus (String[] loginList, String[] checkedList);
}

