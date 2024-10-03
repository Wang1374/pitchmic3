package com.example.demo.utils;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.xml.transform.Result;
import java.util.Objects;

@Data
public class ResultUtils {
    @Getter
     public enum result_code {
        RESULT_CODE_ERROR("300","fail"),
        RESULT_CODE_SUCCESS("200","success"),
        RESULT_CODE_ERROR_NOT_AUT("500", "no valid authentication"),
        RESULT_CODE_ERROR_NOT_LOGIN("400", "no login yet");
        private String key;
        private String value;
        private result_code(String key,String value){
            this.key = key;
            this.value = value;
        }
    };

    private String code;
    private Object data;
    private String message;
    private ResultUtils(String code,String message,Object data){
        this.code = code;
        this.message = message;
        this.data = data;
    }
    private ResultUtils(String code,String message){
        this.code = code;
        this.message = message;
    }

    public static ResultUtils success(String message, Object data){
        return new ResultUtils(result_code.RESULT_CODE_SUCCESS.getKey(),message,data);
    }
    public static ResultUtils success(String message){
        return new ResultUtils(result_code.RESULT_CODE_SUCCESS.getKey(),message);
    }
    public static ResultUtils success(Object data){
        return new ResultUtils(result_code.RESULT_CODE_SUCCESS.getKey(), result_code.RESULT_CODE_SUCCESS.getValue(),data);
    }
    public static ResultUtils success(){
        return new ResultUtils(result_code.RESULT_CODE_SUCCESS.getKey(), result_code.RESULT_CODE_SUCCESS.getValue());
    }

    public static ResultUtils error(){
        return new ResultUtils(result_code.RESULT_CODE_ERROR.getKey(), result_code.RESULT_CODE_ERROR.getValue());
    }

    public static ResultUtils error(String message){
        return new ResultUtils(result_code.RESULT_CODE_ERROR.getKey(), message);
    }
    public static ResultUtils error(Object data){
        return new ResultUtils(result_code.RESULT_CODE_ERROR.getKey(), result_code.RESULT_CODE_ERROR.getValue(), data);
    }

    public static ResultUtils error(String code,String message){
        return new ResultUtils(code,message);
    }

    public static ResultUtils build(String code,String message,Object data){
        return new ResultUtils(code,message,data);
    }
    public static ResultUtils build(String code,String message){
        return new ResultUtils(code,message);
    }

}
