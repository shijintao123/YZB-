package com.yzb.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.io.FileUtils;

public class Test {

	public static void main(String[] args) throws IOException {
		File file = new File("D://aa.png");
		
		byte[] array = FileUtils.readFileToByteArray(file);
		
		System.out.println(array);
		
		File file1 = new File("D://ww.png");

	    OutputStream output = new FileOutputStream(file1);

	    BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);
	   System.out.println(array.toString().getBytes().equals(array));
	    bufferedOutput.write(array);
	}

}
