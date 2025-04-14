package vn.edu.hcmuaf.fit.demo.utils;

import java.text.Normalizer;
import java.util.regex.Pattern;

public class TextUtils {
    public static String removeAccent(String s) {
        if (s == null) return null;
        String temp = Normalizer.normalize(s, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        return pattern.matcher(temp).replaceAll("").replaceAll("đ", "d").replaceAll("Đ", "D");
    }
}
