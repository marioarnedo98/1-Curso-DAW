import java.util.ArrayList;

import java.util.*;

/**
 * Store details of club memberships.
 * 
 * @author (your name)
 * @version (a version number or a date)
 */
public class Club {
	// Define any necessary fields here ...
	private ArrayList <Membership> Club;

	/**
	 * Constructor for objects of class Club
	 */
	public Club() {
		// Initialise any fields here ...
		Club = new ArrayList<Membership>();
	}

	/**
	 * Add a new member to the club's list of members.
	 * 
	 * @param member
	 *            The member object to be added.
	 */
	public void join(Membership member) {
		Club.add(member);
	}

	/**
	 * @return The number of members (Membership objects) in the club.
	 */
	public int numberOfMembers() {
		return Club.size();
	}

	/**
	 * Prints out all the members
	 */
	public void print() {
		{
			Iterator<Membership>it=Club.iterator();
			while(it.hasNext()) {
				Membership str = it.next();
				System.out.println(str);
			}
		}
	}
	public static void main(String[] args) {
		
	}
}
