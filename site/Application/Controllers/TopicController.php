<?php

include_once 'AbstractController.php';

/** Controller responsible for the creation and requests for the post management
 *
 */
class TopicController extends AbstractController {

    public function init() {
        parent::init();
        $this->IdGrid = 'grid';
        $this->FormName = 'formTopic';
        $this->Action = 'Topic';
        $this->TituloLista = "Topic";
        $this->TituloEdicao = "Topic";
        $this->ItemEditInstanceName = 'TopicEdit';
        $this->ItemEditFormName = 'formTopicItemEdit';
        $this->Model = 'Topic';
        $this->IdWindowEdit = 'EditTopic';
        $this->TplIndex = 'Topic/index.tpl';
        $this->TplEdit = 'Topic/edit.tpl';
    }

    public function btnsavetopicclickAction() {
        $post = Zend_Registry::get('post');
        $br = new Browser_Control();


        // creates a Topic Instance to later add the posts to save
        $newTopic = new Topic();

        // get data from request and set on the object
        $newTopic->setDataFromRequest($post);


        try {
            //tries to save the list of new Topics
            $newTopic->save();
        } catch (Exception $exc) {
            //if something goes wrong on the db side, we create an alert to the user
            $br->setAlert('Error!', $exc->getMessage(), '600', '600');
            $br->send();
            die();
        }

        $br->setBrowserUrl(BASE_URL . 'web/index');

        // echoes the json to the javascript request
        $br->send();
    }

}
