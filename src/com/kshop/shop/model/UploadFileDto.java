package com.kshop.shop.model;

import org.springframework.web.multipart.MultipartFile;

public class UploadFileDto {
	
	private MultipartFile[] file;
	private Long size;
	private String orignName, saveName, filePath, fileType;
	
	public MultipartFile[] getFile() {
		return file;
	}
	public void setFile(MultipartFile[] file) {
		this.file = file;
	}
	public Long getSize() {
		return size;
	}
	public void setSize(Long size) {
		this.size = size;
	}
	public String getOrignName() {
		return orignName;
	}
	public void setOrignName(String orignName) {
		this.orignName = orignName;
	}
	public String getSaveName() {
		return saveName;
	}
	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

}
