<#import "/spring.ftl" as spring>
<#import "admin.ftl" as admin>
<@admin.admin>
    <form action="/admin/questions/add" method="post">
        <div class="form-group row">
            <label for="title" class="col-sm-1 col-form-label text-right">Вопрос:</label>
            <div class="col-sm-4">
                <@spring.bind "questionForm.title"/>
                <input type="text" id="title" name="title" placeholder="Название" value="${spring.stringStatusValue}"
                       class="form-control
                ${spring.status.errorMessages?has_content?then('is-invalid', '')}">
            </div>
        </div>
        <div class="form-group row">
            <label for="courseId" class="col-sm-1 col-form-label text-right">Тип:</label>
            <div class="col-sm-4">
                <@enumSelect "questionType" questionType "class='custom-select'"/>
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-sm-1 col-sm-10">
                <div class="form-check">
                <@spring.formCheckbox "questionForm.required" "class='form-check-input'"/>
                    <label for="required" class="form-check-label">Обязателен</label>
                </div>
            </div>
        </div>
        <div id="questionOptions"></div>
        <div class="offset-sm-1">
            <input type="submit" id="submitForm" class="btn btn-primary">
        </div>
    </form>
</@admin.admin>
<script>
    var wrapper = $('#questionOptions');

    $(function () {
        changeType();

        $("#questionType").change(function () {
            changeType();
        });

        wrapper.on("click", ".remove-field", function (e) {
            e.preventDefault();
            $(this).parents('.form-group').remove();
        });
    });

    function addOption() {
        $("#questionOptions").find(".form-group:last").after('<div class="form-group row">' +
                '<div class="offset-sm-1 col-sm-4">' +
                '<input type="text" name="questionOptions" class="form-control">' +
                '</div>' +
                '<a href="#" class="remove-field">&times;</a>' +
                '</div>'
        );
    }

    function changeType() {
        var type = $("#questionType");
        if (type.val() === "RADIO" || type.val() === "CHECKBOX") {
            if (wrapper.children().length < 1) {
                wrapper.append('<div class="form-group row">' +
                        '<div class="offset-sm-1 col-sm-4">' +
                        '<input type="text" name="questionOptions" class="form-control">' +
                        '</div>' +
                        '</div>');
                $('<a class="offset-sm-1" href="#" onclick="addOption()">Добавить вариант</a>').appendTo(wrapper);
            }
        } else {
            wrapper.empty();
        }
    }
</script>
<#macro enumSelect selectName enumValues attributes="">
    <select name="${selectName}" id="${selectName}" ${attributes}>
        <#list enumValues as enum>
            <option value="${enum}">${enum}</option>
        </#list>
    </select>
</#macro>