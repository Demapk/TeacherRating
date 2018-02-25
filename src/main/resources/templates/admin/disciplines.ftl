<#import "admin.ftl" as admin>
<#import "/spring.ftl" as sprin>
<@admin.admin>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h2 class="h2 font-weight-normal">Предметы</h2>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin/disciplines/add">Добавить</a>
            </div>
        </div>
    </div>
    <#list disciplineMap?keys?sort as key>
        <h4 class="font-weight-light">${key}</h4>
        <#list disciplineMap[key] as discipline>
            ${discipline.title}(${discipline.type.title}) <br>
        </#list>
    </#list>
</@admin.admin>
