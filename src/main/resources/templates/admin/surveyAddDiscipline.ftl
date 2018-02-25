<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
    <form action="/admin/survey/add/discipline" method="post">
        <div class="form-group row">
            <div class="col-sm-2">Предметы</div>
            <div class="col-sm-10">
                <div class="form-check">
                    <@spring.formCheckboxes "surveyForm.disciplines" disciplines '<br>'/>
                </div>
            </div>
        </div>
        <input type="submit" id="submitForm" class="btn btn-primary">
    </form>
</@admin.admin>