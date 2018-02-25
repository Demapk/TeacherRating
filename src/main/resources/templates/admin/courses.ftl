<#import "/spring.ftl" as spring>
<#import "admin.ftl" as admin>
<@admin.admin>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h2 class="h2 font-weight-normal">Курсы</h2>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin/courses/add">Добавить</a>
            </div>
        </div>
    </div>
    <h4 class="font-weight-normal">Бакалавриат</h4>
    <div class="row">
        <#list bachelorCourses as course>
            <div class="col-sm-2">
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header">${course.title}</div>
                    <div class="card-body text-primary">
                <#list course.groups as group>
                    <p class="card-text">${group.title}</p>
                </#list>
                    </div>
                </div>
            </div>
        </#list>
    </div>

</@admin.admin>