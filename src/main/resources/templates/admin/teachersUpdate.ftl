<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
<form action="/admin/teachers/update" id="teacherForm" method="post">
                    <@spring.bind path="teacherForm"/>
    <@spring.formInput "teacherForm.id" "" "hidden"/>
    <div class="form-group row">
        <label for="surname" class="col-sm-2 col-form-label">Фамилия</label>
        <div class="col-sm-3">
            <@spring.bind "teacherForm.surname"/>
            <input type="text" id="surname" name="surname" placeholder="Фамилия" value="${spring.stringStatusValue}"
                   class="form-control
                ${spring.status.errorMessages?has_content?then('is-invalid', '')}">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        <#--<@spring.formInput "teacherForm.surname", "placeholder='Фамилия' class='form-control ${spring.status.errorMessages?has_content?then('is-invalid', 'is-valid')}'"/>-->
        </div>
    </div>
    <div class="form-group row">
        <label for="name" class="col-sm-2 col-form-label">Имя</label>
        <div class="col-sm-3">
            <@spring.bind "teacherForm.name"/>
            <input type="text" id="name" name="name" placeholder="Имя" value="${spring.stringStatusValue}" class="form-control
                <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="patronymic" class="col-sm-2 col-form-label">Отчество</label>
        <div class="col-sm-3">
            <@spring.bind "teacherForm.patronymic"/>
            <input type="text" id="patronymic" name="patronymic" value="${spring.stringStatusValue}" placeholder="Отчество" class="form-control
                <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
        </div>
    </div>
    <input type="submit" id="submitForm" class="btn btn-primary" value="Обновить">
</form>
</@admin.admin>