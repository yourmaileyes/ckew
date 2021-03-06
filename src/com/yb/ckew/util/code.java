package com.yb.ckew.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Random;
import javax.imageio.ImageIO;

public class code {
	private static String[] fontNames = { "????", "???????", "????", "??????",  "????_GB2312" };
	// ??????
	//"23456789abcdefghjkmnopqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ";
	private static String codes = "23456789abcdefghjkmnopqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ";
	// ?????
	private Color bgColor = new Color(255, 255, 255);
	// ????(???????????????С)
	private int base = 30;
	// ?????
	private int width = base * 4;
	// ?????
	private int height = base;
	// ???????
	private int len = 4;
	// ?????????С
	private int fontSize = 22;
	// ???????????
	private String text;

	private BufferedImage img = null;
	private Graphics2D g2 = null;

	/**
	 * ??????????
	 */
	public void drawImage(OutputStream outputStream) {
		// 1.???????????????, ????????????????
		img = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 2.??????????
		g2 = (Graphics2D) img.getGraphics();
		// 3.??????
		// ????????
		g2.setColor(bgColor);
		g2.fillRect(0, 0, width, height);

		StringBuffer sb = new StringBuffer();// ??????????????????

		for (int i = 0; i < len; i++) {
			// ?????????? -- ???
			// g2.setColor(new Color(255, 0, 0));
			g2.setColor(new Color(getRandom(0, 150), getRandom(0, 150),getRandom(0, 150)));

			// ????????
			g2.setFont(new Font(fontNames[getRandom(0, fontNames.length)], Font.BOLD, fontSize));

			// ???????(-45~+45)
			int theta = getRandom(-45, 45);
			g2.rotate(theta * Math.PI / 180, 7 + i * base, height - 8);

			// д??
			String code = codes.charAt(getRandom(0, codes.length())) + "";
			g2.drawString(code, 7 + i * base, height - 8);
			sb.append(code);
			g2.rotate(-theta * Math.PI / 180, 7 + i * base, height - 8);
		}

		this.text = sb.toString();

		// ????????
		for (int i = 0; i < len + 2; i++) {
			// ?????????? -- ???
			// g2.setColor(new Color(255, 0, 0));
			g2.setColor(new Color(getRandom(0, 150), getRandom(0, 150),
					getRandom(0, 150)));
			g2.drawLine(getRandom(0, 120), getRandom(0, 30), getRandom(0, 120),
					getRandom(0, 30));
		}
		// ??????
		// ??????????
		g2.setColor(Color.GRAY);
		// ??????
		g2.drawRect(0, 0, width-1, height-1);
		
		// 4.??????????????????
		try {
			 ImageIO.write(this.img, "JPEG", outputStream);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			// 5.??????
			g2.dispose();
		}
	}
	
	/**
	 * ???????????
	 * @return
	 */
	public String getCode() {
		return this.text;
	}

	/*
	 * ????????????
	 */
	private static int getRandom(int start, int end) {
		Random random = new Random();
		return random.nextInt(end - start) + start;
	}
	
	/*public static void main(String[] args) throws Exception {
		VerifyCode vc = new VerifyCode();
		vc.drawImage(new FileOutputStream("d:/vc.jpg"));
		System.out.println("执行成功!");
	}*/

}
