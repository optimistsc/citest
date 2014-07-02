package com.kshop.util;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import org.apache.commons.net.ftp.*;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.kshop.shop.model.UploadFileDto;

public class FileUpload {
	
	private File destinationDir;

	public void setDestinationDir(File destinationDir) {
		this.destinationDir = destinationDir;
	}
	
	public List<UploadFileDto> fileUpload(UploadFileDto uploadFileDto) throws Exception{
		
		List<UploadFileDto> list = new ArrayList<UploadFileDto>();
		
		//임시저장폴더 설정
		File dir = new File("C:/", "kshoptemp");
		//임시저장폴더가 없으면 생성     
		if(!dir.exists()){
			dir.mkdir();
		}
		
		//file[]의 길이
		int len = uploadFileDto.getFile().length;
	
		//file의 갯수 만큼 실행
		for(int i=0;i<len;i++) {
			
			UploadFileDto uploadedDto = new UploadFileDto();
			
			MultipartFile mFile = uploadFileDto.getFile()[i];
			
			//업로드된 파일이 없으면 건너뜀
			if(mFile.getOriginalFilename().equals("")) {
				continue;
			}
			
			String mFileName = mFile.getOriginalFilename();
			File destination = File.createTempFile("kshop_", mFileName, destinationDir);
			FileCopyUtils.copy(mFile.getInputStream(), new FileOutputStream(destination));
			
			String saveName = new SimpleDateFormat("yyyyMMddHHmmssSSS", new Locale("ko", "KR")).format(new Date()) + System.currentTimeMillis() + mFileName.substring(mFileName.length()-4, mFileName.length());
			
	        FTPClient ftp = null;
	        int reply;
	        try {
	            ftp = new FTPClient();
	            ftp.connect(FtpInfo.IP, FtpInfo.PORT);
	            System.out.println("Connected to " + FtpInfo.IP + " on "+ftp.getRemotePort());
	            
	            // After connection attempt, you should check the reply code to verify
	            // success.
	            reply = ftp.getReplyCode();
	            if (!FTPReply.isPositiveCompletion(reply)) {
	                ftp.disconnect();
	                System.err.println("FTP server refused connection.");
	                System.exit(1);
	            }
	            
	            if(!ftp.login(FtpInfo.ID, FtpInfo.PWD)) {
	                ftp.logout();
	                throw new Exception("ftp 서버에 로그인하지 못했습니다.");
	            }
	            
	            ftp.setFileType(FTP.BINARY_FILE_TYPE);
	            ftp.enterLocalPassiveMode();
	            
	            
                File uploadFile = new File(destination.getAbsolutePath());
                FileInputStream fis = null;
                try {
                    fis = new FileInputStream(uploadFile);
                    ftp.storeFile(saveName, fis);
                } catch(IOException e) {
                    e.printStackTrace();
                } finally {
                    if (fis != null) {
                        try {fis.close(); } catch(IOException e) {}
                    }
                }//end try
	            
	            ftp.logout();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	        	
	        	uploadedDto.setSaveName(saveName);
	        	uploadedDto.setOrignName(mFileName);
	        	uploadedDto.setFilePath("ftp://" + FtpInfo.IP + ":" + FtpInfo.PORT + "/" + saveName);
	        	
	            if (ftp != null && ftp.isConnected()) {
	                try { ftp.disconnect(); } catch (IOException e) {}
	            }
	        }
			
	        list.add(uploadedDto);
			
			destination.delete();
		}
				
		return list;
	}
				
}