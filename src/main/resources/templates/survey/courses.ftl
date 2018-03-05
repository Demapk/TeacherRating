<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опрос">
    <div class="container">
        <div class="col-md-8">
            <#list courses as course>
                <br>
                <a class="btn btn-outline-primary" href="/survey/course/${course.id}" role="button">${course.title}</a>
                <br>
            </#list>
        </div>
    </div>
</@base.base>