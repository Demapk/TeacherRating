<#import "/spring.ftl" as spring>
<#import "../layout/baseTemplate.ftl" as base>
<@base.base "Опрос">
<div class="container">
    <h1 class="font-weight-normal">${title}</h1>
    <p class="lead text-danger">* Обязательно</p>
    <h2 class="font-weight-normal">${surveyTitle}</h2>
    <form method="post">
        <input type="hidden" name="page" value="${page}">
        <input type="hidden" name="disciplineId" value="${discipline.id}">
        <#if teachers?size == 1>
            <input type="hidden" name="teacherId" value="${teachers?keys[0]}">
        <#else>
            <h4>Преподаватель<span class="text-danger">*</span></h4>
            <br>
            <#list teachers as k,v>
                <div class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" name="teacherId" id="teacherId${k}" value="${k}">
                    <label for="teacherId${k}" class="custom-control-label">${v}</label>
                </div>
            </#list>
            <br>
        </#if>
        <#list questions as question>
            <h4>${question.title}<#if question.required><span class="text-danger">*</span></#if></h4>
            <br>
            <#if question.questionType == "RADIO">
                <@spring.bind "surveyPageWrapper.questionResponses"/>
                <input type="hidden" name="${spring.status.expression}[${question?index}].questionId" value="${question.id}">
                  <#list question.questionOptions as option>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="${spring.status.expression}[${question?index}].answer"
                               id="question${question.id}_${option?index}" value="${option}"
                        <#if question.required>required</#if>>
                        <label for="question${question.id}_${option?index}" class="custom-control-label">${option}</label>
                    </div>
                </#list>
            <#elseif question.questionType == "TEXT">
                <div class="form-group">
                    <@spring.bind "surveyPageWrapper.questionResponses"/>
                    <input type="hidden" name="${spring.status.expression}[${question?index}].questionId" value="${question.id}">
                    <input type="text" class="form-control" placeholder="Ответ" name="${spring.status.expression}[${question?index}].answer"
                                        <#if question.required>required</#if>>
                </div>
            </#if>
        <br>
        </#list>
        <input type="submit" id="submitForm" class="btn btn-primary">
    </form>
</div>
</@base.base>