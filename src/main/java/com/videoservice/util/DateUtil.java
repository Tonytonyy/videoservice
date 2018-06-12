package com.videoservice.util;

import javax.xml.crypto.Data;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.UUID;

public class DateUtil {
    public static LocalDate getNow(){
        LocalDateTime localDateTime = LocalDateTime.now();
        return localDateTime.toLocalDate();
    }
}
