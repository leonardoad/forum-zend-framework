<?php

include_once 'AbstractController.php';

/** Controller responsible for the creation and requests for the post management
 *
 */
class PostController extends AbstractController {

    public function init() {
        parent::init();
        $this->IdGrid = 'grid';
        $this->FormName = 'formPost';
        $this->Action = 'Post';
        $this->TituloLista = "Post";
        $this->TituloEdicao = "Post";
        $this->ItemEditInstanceName = 'PostEdit';
        $this->ItemEditFormName = 'formPostItemEdit';
        $this->Model = 'Post';
        $this->IdWindowEdit = 'EditPost';
        $this->TplIndex = 'Post/index.tpl';
        $this->TplEdit = 'Post/edit.tpl';
    }

    public function btnsavepostclickAction() {
        $post = Zend_Registry::get('post');
        $br = new Browser_Control();


        // creates a Post Instance to later add the posts to save
        $newPost = new Post();

        // get data from request and set on the object
        $newPost->setDataFromRequest($post);


        try {
            //tries to save the list of new Posts
            $newPost->save();
        } catch (Exception $exc) {
            //if something goes wrong on the db side, we create an alert to the user
            $br->setAlert('Error!', $exc->getMessage(), '600', '600');
            $br->send();
            die();
        }

        $br->setBrowserUrl(BASE_URL . 'web/topic/id/' . $post->id_topic);

        // echoes the json to the javascript request
        $br->send();
    }

}
