<h2>
    {$topicTitle}
</h2>
{section name=i loop=$itemLst}
    <div class="panel">
        <div class="panel panel-heading">
            <p >{$itemLst[i]->getFormatedDescription()}</p>
            <div class="text-right">{$itemLst[i]->getAutor()} | {$itemLst[i]->getCreated_at()}</div>
        </div>
    </div>
{/section}

<div class="panel">
    <div class="panel panel-heading">
        <div >{$description}</div>
        <div >{$btnSavePost}{$btnLogin}</div>
    </div>
</div>