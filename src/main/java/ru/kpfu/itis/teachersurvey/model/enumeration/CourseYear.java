package ru.kpfu.itis.teachersurvey.model.enumeration;

public enum CourseYear {
    BACHELOR_FIRST(11), BACHELOR_SECOND(12), BACHELOR_THIRD(13), BACHELOR_FOURTH(14), BACHELOR_END(10),
    MASTER_FIRST(21), MASTER_SECOND(22), MASTER_END(20);

    private final int code;

    CourseYear(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }

    public boolean isActive() {
        switch (this) {
            case BACHELOR_END:
            case MASTER_END:
                return false;
            default:
                return true;
        }
    }

    public CourseYear getNextYear() {
        return isActive() ? CourseYear.values()[(this.ordinal() + 1) % values().length] : this;
    }

    public boolean isBachelor() {
        switch (this) {
            case MASTER_FIRST:
            case MASTER_SECOND:
            case MASTER_END:
                return false;
            default:
                return true;
        }
    }
}
