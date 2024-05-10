package pack;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.imageio.ImageIO;


public class QRCode 
{
	public static void main(String[] args) throws WriterException, IOException,
			NotFoundException 
	{
		QRCode js = new QRCode();
		//Scanner ss=new Scanner(System.in);
		System.out.println("Enter Your Name");
		String Name="";
		String txt="";
		try 
		{
                    js.qr(txt,"C:\\Users\\ADMIN\\Documents\\NetBeansProjects\\Fake Product\\web\\QR_Code\\"+Name+".png");
		
            
                
                
                }
		catch (Exception e){
                    System.out.println(e);
		}
	}
	public void qr(String content,String imagename) throws WriterException, IOException,
	NotFoundException
	{
            System.out.println("This is content");
            System.out.println(content);
            
		String qrCodeData =content;
		String filePath = imagename;
                System.out.println("filepath  "+filePath);
		String charset = "UTF-8"; // or "ISO-8859-1" 000000000000000233333
		Map<EncodeHintType, ErrorCorrectionLevel> hintMap = new HashMap<>();
		hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);

		createQRCode(qrCodeData, filePath, charset, hintMap, 200, 200);
		System.out.println("QR Code image created successfully!");

		System.out.println("Data read from QR Code: "
				+ readQRCode(filePath, charset, hintMap));

	}
	public static void createQRCode(String qrCodeData, String filePath,
			String charset, Map hintMap, int qrCodeheight, int qrCodewidth)
			throws WriterException, IOException 
	{
		BitMatrix matrix = new MultiFormatWriter().encode(
				new String(qrCodeData.getBytes(charset), charset),
				BarcodeFormat.QR_CODE, qrCodewidth, qrCodeheight, hintMap);
		MatrixToImageWriter.writeToFile(matrix, filePath.substring(filePath
				.lastIndexOf('.') + 1), new File(filePath));
	}

	public static String readQRCode(String filePath, String charset, Map hintMap)
			throws FileNotFoundException, IOException, NotFoundException 
	{
		BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(
				new BufferedImageLuminanceSource(
						ImageIO.read(new FileInputStream(filePath)))));
		Result qrCodeResult = new MultiFormatReader().decode(binaryBitmap,
				hintMap);
		return qrCodeResult.getText();
	}
}