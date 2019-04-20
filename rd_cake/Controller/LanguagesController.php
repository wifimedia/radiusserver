<?php
class LanguagesController extends AppController {

   //--READ--
   public function index() {
        $q = $this->{$this->modelClass}->find('all');
        $items = array();
        foreach($q as $i){
            array_push($items,$i[$this->modelClass]);
        }
        $this->set(array(
            'items' => $items,
            'success' => true,
            '_serialize' => array('items','success')
        ));
    }

    //--READ single--
    public function view($id) {
        $item = $this->{$this->modelClass}->findById($id);
        $this->set(array(
            'item' => $item,
            'success' => true,
            '_serialize' => array('item','success')
        ));
    }

    //--CREATE--
    public function add() {
        if ($this->{$this->modelClass}->save($this->request->data)) {
            $this->set(array(
                'id'        => $this->{$this->modelClass}->id,
                'success'   => true,
                '_serialize' => array('success')
            ));
        } else {
            $message = 'Error';
            $this->set(array(
                'errors' => $this->{$this->modelClass}->validationErrors,
                'success' => false,
                '_serialize' => array('errors','success')
            ));
        }   
    }

    //--UPDATE--
    public function edit($id) {
        $this->{$this->modelClass}->id = $id;
        if ($this->{$this->modelClass}->save($this->request->data)) {
            $this->set(array(
                'success' => true,
                '_serialize' => array('success')
            ));
        } else {
            $this->set(array(
                'errors' => $this->{$this->modelClass}->validationErrors,
                'success' => false,
                '_serialize' => array('errors','success')
            ));
        }
    }

    //--DELETE-- 
    public function delete() {
        if ($this->{$this->modelClass}->delete($this->data['id'],true)) {
            $success = true;
        } else {
            $success = false;
        }
        $this->set(array(
            'success' => $success,
            '_serialize' => array('success')
        ));
    }
}
?>
