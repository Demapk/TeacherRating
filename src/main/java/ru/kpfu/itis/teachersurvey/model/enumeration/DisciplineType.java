package ru.kpfu.itis.teachersurvey.model.enumeration;


import com.fasterxml.jackson.annotation.JsonValue;

public enum DisciplineType {
    PRACTICE("Практика"), LECTURE("Лекция");

    private final String title;

    DisciplineType(String title) {
        this.title = title;
    }

    @JsonValue
    public String getTitle() {
        return title;
    }
}
