<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
    <form action="/admin/survey/add/course" id="surveyForm" method="post">
        <div class="form-group row">
            <label for="title" class="col-sm-2 col-form-label">Название</label>
            <div class="col-sm-4">
                <@spring.bind "surveyForm.title"/>
                <input type="text" id="title" name="title" placeholder="Название" value="${spring.stringStatusValue}"
                       class="form-control
                ${spring.status.errorMessages?has_content?then('is-invalid', '')}">
            </div>
        </div>
        <div class="form-group row">
            <label for="title" class="col-sm-2 col-form-label">Описание</label>
            <div class="col-sm-4">
                <@spring.bind "surveyForm.description"/>
                <input type="text" id="description" name="description" placeholder="Описание" value="${spring.stringStatusValue}"
                       class="form-control
                ${spring.status.errorMessages?has_content?then('is-invalid', '')}">
            </div>
        </div>
        <div class="form-group row">
            <label for="title" class="col-sm-2 col-form-label">Курс</label>
            <div class="col-sm-4">
                <@spring.bind "surveyForm.courseId"/>
                <select id="${spring.status.expression?replace('[','')?replace(']','')}" name="${spring.status.expression}"
                        class="custom-select">
                <#list courses as k, v>
                    <#assign isSelected = spring.contains(spring.status.actualValue![1], k)>
                    <option value="${k?html}"
                            <#if isSelected>selected="selected"</#if>>${v?html}</option>
                </#list>
                </select>
            </div>
        </div>
        <input  type="submit" id="submitForm" class="btn btn-primary">
    </form>

</@admin.admin>