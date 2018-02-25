<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опрос">
    <div class="container">
        <h1 class="font-weight-normal">${title}</h1>
        <p class="lead">${description}</p>
        <h4>Выберите группу</h4>
        <form method="post">
            <div class="form-group row">
                <div class="col-sm-2">Группа</div>
                <div class="col-sm-4">
                    <input type="hidden" name="page" value="0">
                    <@spring.bind "surveyResponseForm.groupId"/>
                    <select id="${spring.status.expression?replace('[','')?replace(']','')}" name="${spring.status.expression}"
                            class="custom-select">
                        <#list groups as k, v>
                            <#assign isSelected = spring.contains(spring.status.actualValue![1], k)>
                                <option value="${k?html}"
                            <#if isSelected>selected="selected"</#if>>${v?html}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <input type="submit" id="submitForm" class="btn btn-primary">
        </form>
    </div>
</@base.base>