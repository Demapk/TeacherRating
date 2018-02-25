<#import "layout/baseTemplate.ftl" as base>
<@base.base title="Error">
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Что-то пошло не так</h1>
            <p class="lead">${status} ${error} ${message}</p>
            <hr>
            <a href="/" class="lead" style="text-decoration: none">Вернуться на главную</a>
        </div>
    </div>
</@base.base>