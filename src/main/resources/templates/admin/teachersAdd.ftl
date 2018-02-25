<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
<form  id="teacherForm" method="post">
                    <@spring.bind path="teacherForm"/>
    <@spring.formInput "teacherForm.id" "" "hidden"/>
    <div class="form-group row">
        <label for="lastName" class="col-sm-2 col-form-label">Фамилия</label>
        <div class="col-sm-3">
            <@spring.bind "teacherForm.lastName"/>
            <input type="text" id="lastName" name="lastName" placeholder="Фамилия" value="${spring.stringStatusValue}"
                   class="form-control
                ${spring.status.errorMessages?has_content?then('is-invalid', '')}">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        <#--<@spring.formInput "teacherForm.lastName", "placeholder='Фамилия' class='form-control ${spring.status.errorMessages?has_content?then('is-invalid', 'is-valid')}'"/>-->
        </div>
    </div>
    <div class="form-group row">
        <label for="firstName" class="col-sm-2 col-form-label">Имя</label>
        <div class="col-sm-3">
            <@spring.bind "teacherForm.firstName"/>
            <input type="text" id="firstName" name="firstName" placeholder="Имя" value="${spring.stringStatusValue}" class="form-control
                <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="middleName" class="col-sm-2 col-form-label">Отчество</label>
        <div class="col-sm-3">
            <@spring.bind "teacherForm.middleName"/>
            <input type="text" id="middleName" name="middleName" value="${spring.stringStatusValue}" placeholder="Отчество" class="form-control
                <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        </div>
    </div>
    <input type="submit" id="submitForm" class="btn btn-primary" value="Сохранить">
</form>
</@admin.admin>