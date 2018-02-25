<#import "/spring.ftl" as spring>
<#import "admin.ftl" as admin>
<@admin.admin>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h2 class="h2 font-weight-normal">Вопросы</h2>
    <div class="btn-toolbar mb-2 mb-md-0">
        <div class="btn-group mr-2">
            <a class="btn btn-sm btn-outline-secondary" href="/admin/questions/add">Добавить</a>
        </div>
    </div>
</div>
<#list questions>
<table class="table table-sm">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Вопрос</th>
        <th scope="col">Тип</th>
        <th scope="col">Обязателен</th>
        <th scope="col">Действия</th>
    </tr>
    </thead>
    <tbody>
                <#items as question>
                <tr>
                    <th scope="row">${question?counter}</th>
                    <td>${question.title!}</td>
                    <td>${question.questionType}</td>
                    <td>${question.required?string('Да', 'Нет')}</td>
                    <td>
                    <form action="/admin/questions/${question.id}/delete" method="post">
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
