package com.example.demo.utils;

import com.example.demo.entity.FilePath;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/10/14 20:55:25
 * @Version: V1.0
 */
@Component
public class FileUtils {
    private static String outPath;
    @Value("${file.save.path}")
    public void setOutPath(String outPath){
        FileUtils.outPath = outPath;
    }

    private final static String[] FILE_TYPE_VIDEO = {".mp4",".avi",".m4v",".mov",".qt",".flv",".wmv",".asf"};
    private final static String[] FILE_TYPE_AUDIO = {".mp3"};
    private final static String[] FILE_TYPE_IMG = {".png", "jpg"};
    private final static String[] FILE_TYPE_TEXT = {".txt", "md"};
    private final static String[] FILE_TYPE_DOCUMENT = {".doc", ".docx", ".put", ".xlsx", "xls"};

    public static FilePath createFile(MultipartFile file, String outPath, String fileName) throws IOException {
        if(file != null && outPath != null){
            Date format = new Date();
            FilePath result = resultFile(file, fileName);
            String path = outPath + result.getOutPath();
            if(createFilePath(new File(path))){
                //need to throw IOException after create inputStream and outputStream
                // Java IO stream
                InputStream inputStream = file.getInputStream();
                OutputStream outputStream = new FileOutputStream(path + "/" + result.getFileName());
                byte[] bytes = new byte[1024];
                int len = 0;
                while(inputStream.read(bytes, len, bytes.length) > -1){
                    outputStream.write(bytes, len, bytes.length);
                }
                outputStream.flush();
                inputStream.close();
                outputStream.close();
            }
            return result;
        }
        return null;
    }
    private static FilePath resultFile(MultipartFile file, String fileName){
        FilePath result = new FilePath();
        Date format = new Date();

        result.setFileName(fileName != null ? fileName : file.getOriginalFilename());
        result.setFileType(fileType(file));
        //address store on network
        result.setOutPath(fileType(file) + File.separatorChar + DateFormat.getDateInstance(DateFormat.MEDIUM, Locale.US).format(format));
        //address store locally
        result.setInputPath(outPath + result.getOutPath());
        result.setCreateDate(new Date());
        result.setUpdateDate(new Date());
        return result;
    }
    public static FilePath createFile(MultipartFile file, String fileName) throws IOException{
        return createFile(file, outPath, fileName);
    }
    public static FilePath createFile(MultipartFile file) throws IOException{
        return createFile(file, null);
    }
    public static String fileType(MultipartFile file){
        for(String value : FILE_TYPE_VIDEO){
            if(file.getName().lastIndexOf(value) > -1){
                return "video/" + value.replace(".", "");
            }
        }
        for(String value : FILE_TYPE_AUDIO){
            if(file.getName().lastIndexOf(value) > -1){
                return "auto/" + value.replace(".", "");
            }
        }
        for(String value : FILE_TYPE_TEXT){
            if(file.getName().lastIndexOf(value) > -1){
                return "text/" + value.replace(".", "");
            }
        }
        for(String value : FILE_TYPE_DOCUMENT){
            if(file.getName().lastIndexOf(value) > - 1){
                return "document/" + value.replace(".", "");
            }
        }
        for(String value : FILE_TYPE_IMG){
            if(file.getName().lastIndexOf(value) > -1){
                return "image/" + value.replace(".", "");
            }
        }
        return file.getContentType();
    }
    public static boolean createFilePath(File file){
        if(file.exists()) return true;
        //create multi file path, eg: a/b/c/d.txt -> create file a b c then put file d.txt under c
        //mkdirs return false then file path could not be created, return true then file could be created.
        return file.mkdirs();
    }
}