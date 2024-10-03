package com.example.demo.exception;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/12 21:40:27
 * @Version: V1.0
 *
 */
//rewrite the runtimexeception prevent try catch, it will throw the exception to front end instead of print the error log in backend console
public class ServiceException extends RuntimeException{
    public ServiceException(){

    }
    public ServiceException(String message){
        super(message);
    }
}
