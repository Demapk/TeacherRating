<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опрос">
    <div class="container">
        <div class="col-md-8">
            <#list courses as course>
                <a href="/survey/course/${course.id}">${course.title}</a> <br>
            </#list>
        </div>
    </div>
</@base.base>