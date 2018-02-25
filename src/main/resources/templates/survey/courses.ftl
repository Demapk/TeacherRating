<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опрос">
    <div class="container-fluid">
        <div class="offset-md-2 col-md-8">
            <#list courses as course>
                <a href="/survey/course/${course.id}">${course.title}</a>
            </#list>
        </div>
    </div>
</@base.base>