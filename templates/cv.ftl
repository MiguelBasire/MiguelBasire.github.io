<#include "header.ftl">


<div class="container">

    <div class="row">

        <div class="col-md-9">
            <h1><span class="glyphicon glyphicon-user"></span> Miguel BASIRE
                <small>Développeur agile</small
            </h1>
        </div>

        <div class="col-md-3 bottom">
            <a href="https://twitter.com/MigueBasire">@MiguelBasire</a>
            <span class="glyphicon glyphicon-earphone"></span> +33 671563529
        </div>

    </div>



<#list experiences as experience>
    <#if (experience.status == "published")>

        <div class="row">
            <div class="col-md-12">
                <div id="exp-${experience_index}"
                     class="tab-pane panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">${experience.title}
                            <small>${experience.at}</small>
                            <#if experience.tags?seq_contains("Scrum")><span class="badge">scrum</span></#if>
                            <span class="right">${experience.time}</span>
                        </h4>

                    </div>
                    <div class="panel-body">
                    ${experience.body}
                    </div>
                </div>
            </div>

        </div>
    </#if>
</#list>


</div>


<hr/>

<#include "footer.ftl">

