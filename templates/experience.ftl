<#include "header.ftl">

<#include "menu.ftl">

<div class="page-header">
    <h1><#escape x as x?xml>${content.title}</#escape><small>${content.at}</small></h1>
</div>

<p><em>${content.time}</em></p>

<p>${content.body}</p>

<hr />

<#include "footer.ftl">
