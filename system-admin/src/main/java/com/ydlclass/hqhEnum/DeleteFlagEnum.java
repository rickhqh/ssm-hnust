package com.ydlclass.hqhEnum;

public enum DeleteFlagEnum {
    YES("2"),
    NO("0");
    private String value;

    DeleteFlagEnum(String s) {

    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
