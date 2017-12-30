<div class="panel">
    <div class="panel-heading">
        <h2>
            {$topic->getTitle()}
        </h2>
        <p >{$topic->getFormatedDescription()}</p>
        <div class="">by {$topic->getAutor()} at {$topic->getCreated_at()}</div>
        <hr/>
    </div>
    <div class="panel panel-body">
        {section name=i loop=$itemLst}
            <div class="pull-right">by {$itemLst[i]->getAutor()} at {$itemLst[i]->getCreated_at()}</div>
            <p >{$itemLst[i]->getFormatedDescription()}</p>
            <hr/>
        {/section}
    </div>
</div>

<div class="panel">
    <div class="panel panel-heading">
        <div >{$description}</div>
        <div >{$btnSavePost}{$btnLogin}</div>
    </div>
</div>