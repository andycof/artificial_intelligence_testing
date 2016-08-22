package com.example.appsepm;

public class CoreCourseModel {

    private int id;

    private String title;

    private String type;

    public CoreCourseModel(){}

    public CoreCourseModel(String title, String type) {

        super();

        this.title = title;

        this.type = type;

    }

    public int getId() {

        return id;

    }

    public void setId(int id) {

        this.id = id;

    }

    public String getTitle() {

        return title;

    }

    public void setTitle(String title) {

        this.title = title;

    }

    public String getType() {

        return type;

    }

    public void setType(String type) {

        this.type = type;

    }

     

    @Override

    public String toString() {

        return "CoreCourses [id=" + id + ", title=" + title + ", type=" + type

                + "]";

    }

}

