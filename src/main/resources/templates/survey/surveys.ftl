<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опросы">
    <div class="container">
        <#list surveys>
            <ul>
                <br>
            <#items as survey>
                <a class="btn btn-outline-primary" href="/survey/${survey.id}" role="button">${survey.title}</a>
            </#items>
            </ul>
        </#list>
    </div>
</@base.base>