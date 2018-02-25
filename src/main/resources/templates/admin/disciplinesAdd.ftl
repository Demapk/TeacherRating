<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
<form action="/admin/disciplines/add" id="disciplineForm" method="post">
                    <@spring.bind path="disciplineForm"/>
    <div class="form-group row">
        <label for="title" class="col-sm-2 col-form-label">Название</label>
        <div class="col-sm-4">
            <@spring.bind "disciplineForm.title"/>
            <input type="text" id="title" name="title" placeholder="Название" value="${spring.stringStatusValue}"
                   class="form-control
                ${spring.status.errorMessages?has_content?then('is-invalid', '')}">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        </div>
    </div>

    <#--<div class="form-group row">-->
        <#--<label for="disciplineType" class="col-sm-2 col-form-label">Тип</label>-->
        <#--<div class="col-sm-3">-->
            <#--<@enumSelect "type" typeEnum "class='custom-select'"/>-->
        <#--</div>-->
    <#--</div>-->

    <div class="form-group row">
        <label for="courseId" class="col-sm-2 col-form-label">Курс</label>
        <div class="col-sm-4">
            <@spring.bind "disciplineForm.courseId"/>
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

    <div class="form-group row">
        <label for="disciplineType" class="col-sm-2 col-form-label">Преподаватели</label>
        <#list typeEnum as type>
            <div class="col-sm-4">
                <h6>${type.title}</h6>
                <@spring.formCheckboxes "disciplineForm.teachers[${type}]" teachers '<br>'/>
            </div>
        </#list>
    </div>


    <input type="submit" id="submitForm" class="btn btn-primary">
</form>
</@admin.admin>

<#macro enumSelect selectName enumValues attributes="">
    <select name="${selectName}" ${attributes}>
        <#list enumValues as enum>
            <option value="${enum}">${enum.title}</option>
        </#list>
    </select>
</#macro>


<#macro formCheckboxes path options separator attributes="">
    <@spring.bind path/>
    <#list options?keys as value>
        <#assign id="${spring.status.expression?replace('[','')?replace(']','')}${value_index}">
        <#assign name="${spring.status.expression?replace('[','')?replace(']','')}">
        <#assign isSelected = spring.contains(spring.status.actualValue?default([""]), value)>
    <input type="checkbox" id="${id}" name="${name}" value="${value?html}"<#if isSelected> checked="checked"</#if> ${attributes}<@spring.closeTag/>
    <label for="${id}">${options[value]?html}</label>${separator}
    </#list>
    <input type="hidden" name="_${spring.status.expression}" value="on"/>
</#macro>
//ирек камилевич