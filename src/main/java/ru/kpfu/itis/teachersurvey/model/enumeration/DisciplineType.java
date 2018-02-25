package ru.kpfu.itis.teachersurvey.model.enumeration;

public enum DisciplineType {
    PRACTICE("Практика"), LECTURE("Лекция");

    private final String title;

    DisciplineType(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}
