<?php

namespace Bolt\Extension\oparque\gravatar;

use Bolt\Application;
use Bolt\BaseExtension;

class Extension extends BaseExtension
{
  

    public function initialize() {
        $this->addCss('assets/extension.css');
        $this->addJavascript('assets/start.js', true);
        $this->addTwigFunction('imagegravatar', 'twigGravatar');
    }

    public function getName()
    {
        return "gravatar";
    }
    
    public function twigGravatar($email, $size = null){
        $urlgravatar = "http://www.gravatar.com/avatar/";        
        $hash = md5(strtolower(trim($email)));
        
        $withSize = $urlgravatar.$hash.'?s='.$size;
        $withoutSize = $urlgravatar.$hash;
        
        if(!is_null($size)){
            return new \Twig_Markup($withSize, 'UTF-8' );
        }else {
            return new \Twig_Markup($withoutSize, 'UTF-8');
        }
    }

}






