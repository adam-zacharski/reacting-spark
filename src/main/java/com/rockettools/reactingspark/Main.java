package com.rockettools.reactingspark;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import static spark.Spark.*;

/**
 * Created by zacharski on 2/10/15.
 */
public class Main {

    public static void main(String[] args) {
        staticFileLocation("/public");
        get("/time", (req, res) -> {
            return System.currentTimeMillis();
        });
    }
}
