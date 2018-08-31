<?php
class ShareModel extends Model{
	public function Index(){
		$this->query('SELECT title, body, img, name, create_date, shares.id FROM shares INNER JOIN users 
		ON shares.user_id=users.id ORDER BY create_date DESC');
		$rows = $this->resultSet();
		return $rows;
	}

	public function add(){

		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
		if($post['submit']){
			if($post['title'] == '' || $post['body'] == ''){
				Messages::setMsg('Please Fill In All Fields', 'error');
				return;
				
			}
			//Put a default photo if u not pick some1
			if($post['img']== ''){
				$post['img'] = 'https://images5.alphacoders.com/901/901185.jpg';
			}
			// Insert into MySQL
			$this->query('INSERT INTO shares (title, body, img, user_id) VALUES(:title, :body, :img, :user_id)');
			$this->bind(':title', $post['title']);
			$this->bind(':body', $post['body']);
			$this->bind(':img', $post['img']);
			$this->bind(':user_id', $_SESSION['user_data']['id']);
			$this->execute();
			// Verify
			if($this->lastInsertId()){
				// Redirect
				header('Location: '.ROOT_URL.'shares');
			}
		}
		return;
	}

	public function Item($id){

		$this->query('SELECT title, body, img, name, create_date FROM shares INNER JOIN users 
		ON shares.user_id=users.id WHERE shares.id LIKE '.$id.' ORDER BY create_date DESC');
		$rows = $this->resultSet();
		return $rows;
	}
}