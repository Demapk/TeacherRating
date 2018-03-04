<#import "admin.ftl" as admin>
<#import "/spring.ftl" as sprin>
<@admin.admin>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h2 class="h2 font-weight-normal">Предметы</h2>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin/disciplines/add">Добавить</a>
            </div>
        </div>
    </div>
    <#list disciplineMap?keys?sort as key>
        <br>
        <h4 class="font-weight-light">${key}</h4>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Дисциплина</th>
                    <th scope="col">Тип</th>
                    <th scope="col">Действия</th>
                 </tr>
            </thead>
            <tbody>

                    <#list disciplineMap[key] as discipline>
                        <tr>
                            <th scope="row">${discipline?counter}</th>
                            <td> ${discipline.title}</td>
                            <td> ${discipline.type.title}</td>
                            <td>
                                <form action="/admin/disciplines/${discipline.id}/delete" method="post">
                                <input type="submit" class="btn btn-sm btn-secondary" data-toggle="tooltip" data-placement="top"
                                       value="Удалить">
                                </form>
                            </td>
                        </tr>
                    </#list>

            </tbody>
        </table>
    </#list>
</@admin.admin>
