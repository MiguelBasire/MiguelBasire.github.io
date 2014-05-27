<#include "header.ftl">

<#include "menu.ftl">


<h1 class="page-header">Experiences
    <small>Une idée de mon parcours</small>
</h1>

<div class="container">


    <div class="row">

        <div class="col-md-3" role="complementary">

            <ul class="nav nav-pills nav-stacked">
            <#list experiences as experience>

                <#if (experience.status == "published")>
                    <li class="<#if (experience_index == 0)>active</#if>">
                        <a href="#exp-${experience_index}" data-toggle="tab">${experience.time}</a>
                    </li>
                </#if>

            </#list>
            </ul>
        </div>

        <div class="col-md-9 " role="main">
            <div class="tab-content">

            <#list experiences as experience>
                <#if (experience.status == "published")>
                <div id="exp-${experience_index}"
                     class="tab-pane <#if (experience_index == 0)>active</#if> panel panel-default">
                    <div class="panel-heading">
                        <h4>${experience.title}
                            <small>${experience.at}</small>
                        </h4>
                    </div>
                    <div class="panel-body">
                    ${experience.body}
                    </div>
                </div>
                </#if>
            </#list>

            </div>
        </div>

    </div>
</div>


<hr/>

<#include "footer.ftl">

