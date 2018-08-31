<?php
class Shares extends Controller{
	protected function Index(){
		$viewmodel = new ShareModel();
		$this->returnView($viewmodel->Index(), true);
	}

	protected function add(){
		if(!isset($_SESSION['is_logged_in'])){
			header('Location: '.ROOT_URL.'shares');
		}
		$viewmodel = new ShareModel();
		$this->returnView($viewmodel->add(), true);
	}

	protected function View(){
		$id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
		$viewmodel = new ShareModel();
		$this->returnView($viewmodel->Item((int) $id), true);
	}
}