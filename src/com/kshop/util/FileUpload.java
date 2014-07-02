package com.kshop.util;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

import com.kshop.shop.model.ItemFileDto;

public class FileUpload {
	
	private File destinationDir;

	public void setDestinationDir(File destinationDir) {
		this.destinationDir = destinationDir;
	}
	
	public String fileUpload(ItemFileDto itemFileDto) throws Exception{
		
		String path = "";
		
		//임시저장폴더 설정
		File dir = new File("C:/", "kshoptemp");
		//임시저장폴더가 없으면 생성     
		if(!dir.exists()){
			dir.mkdir();
		}
		
		//file[]의 길이
		int len = itemFileDto.getFile().length;
	
		//file의 갯수 만큼 실행
		for(int i=0;i<len;i++) {
			MultipartFile mFile = itemFileDto.getFile()[i];
			//업로드된 파일이 없으면 건너뜀
			if(mFile.getOriginalFilename().equals("")) {
				continue;
			}
			
			System.out.println(System.currentTimeMillis());
			
			String mFileName = mFile.getOriginalFilename();
			File destination = File.createTempFile("soo", mFileName, destinationDir);
			System.out.println(destination);
			
			
			
			destination.delete();
		}
	
		//파일카피
//		FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(destination));
				
		//임시파일 삭제
//		bdestination.delete();
//		sdestination.delete();
		
		return path;
	}
				
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	 /**
//     * @param ip         ftp서버ip
//     * @param port       ftp서버port
//     * @param id         사용자id
//     * @param password   사용자password 
//     * @param folder     ftp서버에생성할폴더
//     * @param files      업로드list
//     * @return
//     */
//    public boolean sendFtpServer(String ip, int port, String id, String password,
//    								String folder, String localPath, ArrayList<String> files) {
//        boolean isSuccess = false;
//        FTPClient ftp = null;
//        int reply;
//        try {
//            ftp = new FTPClient();
//            ftp.connect(ip, port);
//            System.out.println("Connected to " + ip + " on "+ftp.getRemotePort());
//            
//            // After connection attempt, you should check the reply code to verify
//            // success.
//            reply = ftp.getReplyCode();
//            if (!FTPReply.isPositiveCompletion(reply)) {
//                ftp.disconnect();
//                System.err.println("FTP server refused connection.");
//                System.exit(1);
//            }
//            
//            if(!ftp.login(id, password)) {
//                ftp.logout();
//                throw new Exception("ftp 서버에 로그인하지 못했습니다.");
//            }
//            
//            ftp.setFileType(FTP.BINARY_FILE_TYPE);
//            ftp.enterLocalPassiveMode();
//            
//
//            System.out.println(ftp.printWorkingDirectory());
//            try{
//                ftp.makeDirectory(folder);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
//            ftp.changeWorkingDirectory(folder);
//            System.out.println(ftp.printWorkingDirectory());
//            
//            
//            for(int i = 0; i < files.size(); i++) {
//                //ftp서버에 한글파일을 쓸때 한글깨짐 방지
//                String tempFileName = new String(files.get(i).getBytes("utf-8"),"iso_8859_1");
//                String sourceFile = localPath + files.get(i);        
//                File uploadFile = new File(sourceFile);
//                FileInputStream fis = null;
//                try {
//                    fis = new FileInputStream(uploadFile);
//                    System.out.println(sourceFile + " : 전송시작 = >");
//                    isSuccess = ftp.storeFile(tempFileName, fis);
//                    System.out.println(sourceFile + " : 전송결과 = >" + isSuccess);
//                } catch(IOException e) {
//                    e.printStackTrace();
//                    isSuccess = false;
//                } finally {
//                    if (fis != null) {
//                        try {fis.close(); } catch(IOException e) {}
//                    }
//                }//end try
//            }//end for
//            
//            ftp.logout();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (ftp != null && ftp.isConnected()) {
//                try { ftp.disconnect(); } catch (IOException e) {}
//            }
//        }
//        return isSuccess;
//    }
}