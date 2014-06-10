<#include "header.ftl">


<div class="container">

    <div class="row">

        <div class="col-md-9">
            <h1><span class="glyphicon glyphicon-user"></span> Miguel BASIRE
                <small>Développeur agile</small
            </h1>
        </div>

        <div class="col-md-3 ">
            <div class="h2 right">
                <div><a href="https://twitter.com/MiguelBasire"><span class="fa fa-twitter"></span></a></div>
                <div><a href="https://github.com/MiguelBasire"> <span class="fa fa-github"></span> </a></div>
            </div>

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
                            <span class="right"><small>${experience.time}</small></span>
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

    <div class="row right">
      <div class="col-md-2 col-md-offset-10"><small>${content.date?date}</small></div>
    </div>



</div>


<hr/>

<#include "footer.ftl">

