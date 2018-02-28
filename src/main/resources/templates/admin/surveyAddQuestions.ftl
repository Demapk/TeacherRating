<#import "admin.ftl" as admin>
<#import "/spring.ftl" as spring>
<@admin.admin>
    <form action="/admin/survey/add/question" method="post">
        <div class="form-group row">
            <div class="col-sm-2">Вопросы</div>
            <div class="col-sm-10">
                <div class="form-check">
                    <input type="checkbox" class="selectall"/> Выбрать все <br>
                    <@spring.formCheckboxes "surveyForm.questions" questions '<br>' "class='individual'"/>
                </div>
            </div>
        </div>
        <input type="submit" id="submitForm" class="btn btn-primary">
    </form>
</@admin.admin>
<script>
    $(".selectall").click(function(){
        $(".individual").prop("checked",$(this).prop("checked"));
    });
</script>