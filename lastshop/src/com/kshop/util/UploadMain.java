package com.kshop.util;

import java.util.ArrayList;

public class UploadMain {

	public static void main(String[] args) {
		FileUpload upLoader = new FileUpload();
        ArrayList<String> list = new ArrayList<String>();
        
        list.add("context.xml");
        
        boolean re = upLoader.sendFtpServer("211.177.79.92", 21, "admin", "kshop1234", "\\","C:\\", list);
        
        if(re){
            System.out.println("FTPUpLoaderMain.java :: 업로드 성공");
        }else{
            System.out.println("FTPUpLoaderMain.java :: 업로드 실패");
        }
	}
}
