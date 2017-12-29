<?php

/**
 * Model for the class Topic
 * @filesource
 * @author 		Leonardo Daneili
 * @copyright 	Leonardo Danieli
 * @package		 system
 * @subpackage	system.application.models
 * @version		1.0
 */
class Topic extends Db_Table {

    protected $_name = 'topic';
    public $_primary = 'id_topic';

    function __construct($config = array(), $definition = null) {
        parent::__construct($config, $definition);
        $this->setid_user(Session_Control::getPropertyUserLogado('id'));
        $this->setCreated_at(date('m/d/Y H:i:s'));
    }

    function getAutor() {
        if (!$this->User) {
            $this->User = new Usuario();
            $this->User->read($this->getid_user());
        }
        return $this->User->getNomecompleto();
    }

    function readLst($modo = 'obj') {
        parent::readLst($modo);
    }

}
