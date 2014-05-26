<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<h1>Index</h1>

        <#list tags as tag>
                <a href="${tag.uri}"><h1><#escape x as x?xml>${tag.title}</#escape></h1></a>
            <#--<p>${experience.date?string("dd MMMM yyyy")}</p>-->
                <#--<p>${experience.at}</p>-->
                <#--<p>${experience.time}</p>-->
                <#--<p>${experience.body}</p>-->
        </#list>


	</div>

	<hr />

<#include "footer.ftl">
