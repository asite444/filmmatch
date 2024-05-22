package com.movie.filmmatch.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class MemberUtils {


    /**
     * 연령대 계산
     * @param birthDateString
     * @return
     */
    public static int getAgeGroup(String birthDateString) {
        // 생년월일을 'YYYY-MM-DD' 형식으로 파싱
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate birthDate = LocalDate.parse(birthDateString, formatter);
        
        // 현재 날짜
        LocalDate currentDate = LocalDate.now();
        
        // 연령 계산
        long age = ChronoUnit.YEARS.between(birthDate, currentDate);
        
        // 연령대 계산
        int ageGroup = (int) (age / 10) * 10;
        
        return ageGroup;
    }
}
