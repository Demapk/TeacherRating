<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h2 class="h2 font-weight-normal">Опросы</h2>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin/survey/add">Добавить</a>
            </div>
        </div>
    </div>
    <#list surveys>
    <table class="table table-sm">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Название</th>
            <th scope="col">Описание</th>
            <th scope="col">Активен</th>
            <th scope="col">Действия</th>
        </tr>
        </thead>
        <tbody>
                <#items as survey>
                <tr>
                    <th scope="row">${survey?counter}</th>
                    <td>${survey.title!}</td>
                    <td>${survey.description}</td>
                    <td>${survey.active?string('Да', 'Нет')}</td>
                    <td>
                        <form action="/admin/survey/${survey.id}/delete" method="post">
                            <input type="submit" class="btn btn-sm btn-secondary" data-toggle="tooltip" data-placement="top"
                                   value="Удалить">
                        </form>
                    </td>
                </tr>
                </#items>
        </tbody>
    </table>
    </#list>
</@admin.admin>