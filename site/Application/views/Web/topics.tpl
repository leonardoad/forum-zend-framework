
{section name=i loop=$itemLst}
    <div class="panel">
        <div class="panel panel-heading">
            <div class="text-right">{$itemLst[i]->getAutor()} | {$itemLst[i]->getCreated_at()}</div>
            <h4><a href="{$HTTP_REFERER}web/topic/id/{$itemLst[i]->getID()}">{$itemLst[i]->getTitle()}</a></h4>
        </div>
    </div>
{/section}
<div class="panel">
    <div class="panel panel-heading">
        <div >{$title}</div>
        <div >{$btnSaveTopic}{$btnLogin}     </div>
    </div>
</div>