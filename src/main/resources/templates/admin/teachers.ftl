<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h2 class="h2 font-weight-normal">Преподаватели</h2>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin/teachers/add">Добавить</a>
            </div>

        </div>
    </div>
    <#list teachers>
        <h4 class="font-weight-light">Список преподавателей</h4>
        <table class="table table-sm">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Фамилия</th>
                <th scope="col">Имя</th>
                <th scope="col">Отчество</th>
                <th scope="col">Действия</th>
            </tr>
            </thead>
            <tbody>
                <#items as teacher>
                <tr>
                    <th scope="row">${teacher?counter}</th>
                    <td>${teacher.lastName!}</td>
                    <td>${teacher.firstName!}</td>
                    <td>${teacher.middleName!}</td>
                    <td>
                        <#--<form action="/admin/teachers/${teacher.id}/update" method="post">-->
                            <#--<input type="submit" class="btn btn-sm" value="Изменить">-->
                        <#--</form>-->
                            <a href="/admin/teachers/update?id=${teacher.id}" class="btn btn-sm btn-secondary">Изменить</a>
                        <#--<a href="/admin/teachers/${teacher.id}/delete" data-toggle="tooltip" data-placement="top"-->
                        <#--title="Удалить">&times;</a>-->
                    </td>
                </tr>

                </#items>
            </tbody>
        </table>
    <#else >
        <h4 class="display-4">Учителя отсутствуют</h4>
    </#list>


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Добавить преводавателя</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/admin/teachers/add" id="teacherForm" method="post">
                    <@spring.bind path="teacherForm"/>
                    <div class="form-group row">
                        <label for="lastName" class="col-sm-2 col-form-label">Фамилия</label>
                        <div class="col-sm-10">
            <@spring.bind "teacherForm.lastName"/>
                            <input type="text" id="lastName" name="lastName" placeholder="Фамилия" class="form-control
            <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="firstName" class="col-sm-2 col-form-label">Имя</label>
                        <div class="col-sm-10">
            <@spring.bind "teacherForm.firstName"/>
                            <input type="text" id="firstName" name="firstName" placeholder="Имя" class="form-control
                <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="lastName" class="col-sm-2 col-form-label">Отчество</label>
                        <div class="col-sm-10">
            <@spring.bind "teacherForm.middleName"/>
                            <input type="text" id="middleName" name="middleName" placeholder="Отчество" class="form-control
                <#if spring.status.errorMessages?has_content>is-invalid</#if>">
            <@spring.showErrors "<br>", "invalid-feedback"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                <button type="button" id="submitForm" class="btn btn-primary">Добавить</button>
            </div>
        </div>
    </div>
</div>
</@admin.admin>
<script>
    $(function(){
        $('#submitForm').on('click', function () {
            $('#teacherForm').submit();
        });

        // $('#exampleModal').on('shown.bs.modal', function (e) {
        //     $('#modaltrigger').one('focus', function (e) {
        //         $(this).blur();
        //     });
        // });

        $('[data-toggle="tooltip"]').tooltip();
    });
</script>