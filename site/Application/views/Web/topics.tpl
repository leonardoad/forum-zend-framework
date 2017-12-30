<div class="panel">
    <div class="panel panel-body">
        {section name=i loop=$itemLst}
            <div class="">
                <div class="pull-right">
                    <div>{$itemLst[i]->getTotalPosts()} answers to this topic</div>
                    <div>created by {$itemLst[i]->getAutor()} at {$itemLst[i]->getCreated_at()}</div>
                </div>
                <h4><a href="{$HTTP_REFERER}web/topic/id/{$itemLst[i]->getID()}">{$itemLst[i]->getTitle()}</a></h4>
                <div class="">{$itemLst[i]->getDescription()} </div>
            </div>
            <hr/>
        {/section}
    </div>
</div>
<div class="panel">
    <div class="panel panel-heading">
        <div >{$title}</div>
        <div >{$description}</div>
        <div >{$btnSaveTopic}{$btnLogin}     </div>
    </div>
</div>