<#include "header.ftl">

<#include "menu.ftl">


<div class="page-header">
    <h1>Experiences
        <small>Une idée de mon parcours</small>
    </h1>

<#list experiences as experience>

    <#if (experience.status == "published")>

        <div class="panel panel-default">
            <div class="panel-heading"><h4>${experience.title} @ ${experience.at} <small>${experience.time}</small></h4></div>
            <div class="panel-body">
                ${experience.body}
            </div>
        </div>
    </#if>

</#list>
</div>

<hr/>

<#include "footer.ftl">

