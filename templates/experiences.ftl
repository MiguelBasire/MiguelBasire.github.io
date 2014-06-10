<#include "header.ftl">

<#include "menu.ftl">

<div class="page-header">
    <h1>Experiences
        <small>Une idée de mon parcours</small>
    </h1>
</div>

<div class="container">


    <div class="row">

        <div class="col-md-3" role="complementary">

            <ul class="nav nav-pills nav-stacked">

            <#list experiences as experience>

                <#if (experience.status == "published")>
                    <li class="<#if (experience_index == 0)>active</#if>">
                        <a href="#exp-${experience_index}" data-toggle="tab">
                            <span class="fa fa-arrow-circle-o-right"></span>
                        ${experience.time}
                        </a>
                    </li>
                </#if>

            </#list>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>cv.html">
                    Full
                </a></li>
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
                                <#if experience.tags?seq_contains("Scrum")><span class="badge">scrum</span></#if>
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

