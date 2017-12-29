<?php

include_once getcwd() . '/Application/Controllers/AbstractController.php';

/**
 * This is a Controller accessible without login
 */
class WebController extends AbstractController {

    /**
     *
     */
    public function indexAction() {
        $post = Zend_Registry::get('post');
        $view = Zend_Registry::get('view');

        $topicLst = new Topic();
        $topicLst->readLst();

        $view->assign('itemLst', $topicLst->getItens());

        // ---- form new post ---------------------

        $form = new Ui_Form();
        $form->setName('formPost');
        $form->setAction('Topic');


        $element = new Ui_Element_Text('title', 'Create a new topic right now!');
        $element->setRequired();
        $element->setVisible(Usuario::getIdUsuarioLogado() != '');
        $form->addElement($element);


        $button = new Ui_Element_Btn('btnSaveTopic');
        $button->setDisplay('Save New Topic', 'plus');
        $button->setSendFormFiends();
        $button->setType('success');
        $button->setVisible(Usuario::getIdUsuarioLogado() != '');
        $form->addElement($button);

        $button = new Ui_Element_Btn('btnLogin');
        $button->setDisplay('Log in to create a new Topic', '');
        $button->setType('success');
        $button->setHref('login');
        $button->setVisible(Usuario::getIdUsuarioLogado() == '');
        $form->addElement($button);


        $html = $form->displayTpl($view, 'web/topics.tpl');

        $view->assign('body', $html);

        $view->assign('scriptsJs', Browser_Control::getScriptsJs());
        $view->assign('scriptsCss', Browser_Control::getScriptsCss());





        $view->output('web/index.tpl');
    }

    /**
     *
     */
    public function topicAction() {
        $post = Zend_Registry::get('post');
        $view = Zend_Registry::get('view');

        $topic = new Topic();
        $topic->read($post->id);
        $view->assign('topicTitle', $topic->getTitle());

        $postLst = new Post();
        $postLst->where('id_topic', $post->id);
        $postLst->readLst();
        $view->assign('itemLst', $postLst->getItens());


        // ---- form new post ---------------------

        $form = new Ui_Form();
        $form->setName('formPost');
        $form->setAction('Post');



        $element = new Ui_Element_Hidden('id_topic');
        $element->setValue($post->id);
        $form->addElement($element);


        $element = new Ui_Element_Textarea('description', 'Put your opinion here');
        $element->setRequired();
        $element->setAttrib('rows', '8');
        $element->setVisible(Usuario::getIdUsuarioLogado() != '');
        $form->addElement($element);


        $button = new Ui_Element_Btn('btnSavePost');
        $button->setDisplay('Save Post', 'plus');
        $button->setSendFormFiends();
        $button->setType('success');
        $button->setVisible(Usuario::getIdUsuarioLogado() != '');
        $form->addElement($button);

        $button = new Ui_Element_Btn('btnLogin');
        $button->setDisplay('Log in to post', '');
        $button->setType('success');
        $button->setHref('login');
        $button->setVisible(Usuario::getIdUsuarioLogado() == '');
        $form->addElement($button);


        $html = $form->displayTpl($view, 'web/topic.tpl');

        $view->assign('body', $html);

        $view->assign('scriptsJs', Browser_Control::getScriptsJs());
        $view->assign('scriptsCss', Browser_Control::getScriptsCss());

        $view->output('web/index.tpl');
    }

}
