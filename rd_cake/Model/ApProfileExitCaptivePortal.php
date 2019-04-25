<?php
App::uses('AppModel', 'Model');

class ApProfileExitCaptivePortal extends AppModel {

     public $belongsTo = array(
        'ApProfileExit' => array(
                    'className' => 'ApProfileExit',
                    'foreignKey' => 'ap_profile_exit_id'
                    )
        );

}

?>
