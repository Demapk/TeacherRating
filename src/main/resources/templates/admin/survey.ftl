<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h2 class="h2 font-weight-normal">Опрос</h2>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin/survey/add">Добавить</a>
            </div>
        </div>
    </div>
    <#list surveys as survey>
        ${survey.title}<br>
    </#list>
</@admin.admin>