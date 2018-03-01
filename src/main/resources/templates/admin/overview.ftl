<#import "/spring.ftl" as spring>
<#import "admin.ftl" as admin>
<head>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
    <script src="//cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
</head>
<@admin.admin>
        <h1 class="font-weight-normal">Реузльтаты опроса</h1>
        <div class="input-group mb-3">

            <select id="sel_survey" class="custom-select">
                <option selected>Выберите курс</option>
            </select>

        </div>
        <div class="input-group mb-3">
            <select id="sel_discipline" class="custom-select">
                <option selected>Выберите предмет</option>
            </select>
        </div>
        <div class="chart-wrapper">

        </div>
</@admin.admin>
<script>
    var surveyDropDown = $("#sel_survey");
    var disciplineDropDown = $("#sel_discipline");

    $.get("/api/v1/surveys", function (response) {
        $.each(response, function (key, value) {
            surveyDropDown.append($("<option />").val(value.id).text(value.title));
        });
    });

    surveyDropDown.change(function () {
        disciplineDropDown.empty();
        disciplineDropDown.append($("<option />").text("Выберите предмет"));
        var surveyId = surveyDropDown.val();
        $.get("/api/v1/surveys/" + surveyId + "/disciplines", function (response) {
            $.each(response, function (key, value) {
                disciplineDropDown.append($("<option />").val(value.id).text(value.title));
            });
        });
    });

    disciplineDropDown.change(function () {
        $(".chart-wrapper").empty();
        var surveyId = surveyDropDown.val();
        var disciplineId = disciplineDropDown.val();
        $.get("/api/v1/responses?surveyId=" + surveyId + "&disciplineId=" + disciplineId, function (response) {
            var teachers = {};
            $.each(response, function (key, value) {
                if (value.question.questionType === "RADIO") {
                    teachers[JSON.stringify(value.teacher)] = teachers[JSON.stringify(value.teacher)] || {};
                    teachers[JSON.stringify(value.teacher)][value.question.title] = teachers[JSON.stringify(value.teacher)][value.question.title] || [];
                    teachers[JSON.stringify(value.teacher)][value.question.title].push(value.answer);
                }
            });
            var index = 1;

            $.each(teachers, function (value) {
                var avg = [];
                var teacher = JSON.parse(value);
                $(".chart-wrapper").append('<p>' + teacher.initials + '</p>');
                $(".chart-wrapper").append('<div class=\"ct-chart\" id=\"teacher' + index + '\"></div>\n');
                $.each(teachers[value], function (question) {
                    var count = 0;
                    var result = teachers[value][question].reduce(function (sum, current) {
                        var num = parseInt(current);
                        if (!isNaN(num)) {
                            count++;
                            return sum + num;
                        } else {
                            return sum;
                        }
                    }, 0);
                    avg.push(result / count);
                });

                new Chartist.Bar('#teacher' + index, {
                    labels: Object.keys(teachers[value]),
                    series: [avg]
                }, {
                    width: 600,
                    height: 400,
                    low: 0,
                    high: 5
                }).on('draw', function(data) {
                    if(data.type === 'bar') {
                        data.element.attr({
                            style: 'stroke-width: 50px'
                        });
                    }
                });
                index++;
            })

        });
    });

</script>