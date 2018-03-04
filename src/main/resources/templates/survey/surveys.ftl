<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опросы">
    <div class="container">
        <#list surveys>
            <ul>
            <#items as survey>
                <li><a href="/survey/${survey.id}">${survey.title}</a></li>
            </#items>
            </ul>
        </#list>
    </div>
</@base.base>