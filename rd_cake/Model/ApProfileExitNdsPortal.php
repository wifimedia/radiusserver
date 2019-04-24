<?php
App::uses('AppModel', 'Model');

class ApProfileExitNdsPortal extends AppModel {

     public $belongsTo = array(
        'ApProfileExit' => array(
                    'className' => 'ApProfileExit',
                    'foreignKey' => 'ap_profile_exit_id'
                    ),
        'ApProfileExitUpstream' => [
                'className'     => 'ApProfileExit',
                'foreignKey'    => 'ap_profile_exit_upstream_id'
            ]
        );
	}

?>
