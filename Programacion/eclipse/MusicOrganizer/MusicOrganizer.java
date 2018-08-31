import java.util.ArrayList;
import java.awt.*;
import java.awt.event.*;
import java.applet.*;
import java.io.*;

/**
 * A class to hold details of audio files.
 * 
 * @author
 * @version
 */
public class MusicOrganizer {
	// An ArrayList for storing the file names of music files.
	private ArrayList<String> files;

	/**
	 * Create a MusicOrganizer
	 */
	public MusicOrganizer() {
		files = new ArrayList<String>();
	}

	/**
	 * Add a file to the collection.
	 * 
	 * @param filename
	 *            The file to be added.
	 */
	public void addFile(String filename) {
		files.add(filename);
	}

	/**
	 * Return the number of files in the collection.
	 * 
	 * @return The number of files in the collection.
	 */
	public int getNumberOfFiles() {
		return files.size();
	}

	/**
	 * List a file from the collection.
	 * 
	 * @param index
	 *            The index of the file to be listed.
	 */
	public void listFile(int index) {
		if (index >= 0 && index < files.size()) {
			String filename = files.get(index);
			System.out.println(filename);
		}
	}

	/**
	 * Remove a file from the collection.
	 * 
	 * @param index
	 *            The index of the file to be removed.
	 */
	public void removeFile(int index) {
		if (index >= 0 && index < files.size()) {
			files.remove(index);
		}
	}

	public void checkIndex(int index) {
		if (index < 0 && index < files.size()) {
			System.out.println("Error, there are " + index + " Files");
		} else {

		}
	}

	public boolean validindex(int input) {
		if (input < 0 || input >= files.size()) {
			return false;
		}
		return true;
	}

	public void listMatching(String searchString) {
		boolean error=true;
		for (String filename : files) {
			if (filename.contains(searchString)) {
				System.out.println(filename);
				error = false;
			}
		}
		if (error) {
			System.out.println("Sorry but I could't find any one with " + searchString);

		}
	}

	public void listAllFiles() {
		for (int i = 0; i < getNumberOfFiles(); i++) {
			System.out.print("Cancion " + i + ": ");
			listFile(i);
		}
	}

	public static void main(String[] args) {
		MusicOrganizer m = new MusicOrganizer();
		m.addFile("No money - Galantis");
		m.addFile("Adventure time - Panda Eyes, Teminite");
		m.addFile("Colorblind - Panda Eyes");
		System.out.println("Ahora hay " + m.getNumberOfFiles() + " canciones");
		m.addFile("Space Battle -  F-777");
		System.out.println("Ahora hay " + m.getNumberOfFiles() + " canciones");
		m.listFile(2);
		m.listAllFiles();
		m.removeFile(2);
		m.listFile(2);
		m.checkIndex(-1);
		m.validindex(5);
		m.listMatching("a");
	}
}
