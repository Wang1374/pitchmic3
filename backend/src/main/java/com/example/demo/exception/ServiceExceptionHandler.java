package com.example.demo.exception;

import com.example.demo.utils.ResultUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/12 21:46:17
 * @Version: V1.0
 */
@RestControllerAdvice
public class ServiceExceptionHandler {

    @ExceptionHandler(ServiceException.class)
    public ResultUtils handler(ServiceException serviceException){
        return ResultUtils.error(serviceException.getMessage());
    }
}
