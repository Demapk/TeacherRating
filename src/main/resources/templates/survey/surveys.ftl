<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опросы">
    <div class="container">
    <#if surveys?size == 0>
        <p><h5>Нету активных опросов для данного курса</h5> <br> <input type="button" class="btn btn-primary" onclick="history.back();" value="Вернуться"/> </p>
    <#else>
    </#if>
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