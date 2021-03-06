package com.fyxt.w.common.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.client.ClientProtocolException;
import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSONObject;
import com.fyxt.w.common.vo.AccessTokenResultVO;
import com.fyxt.w.common.vo.AddMaterialResultVO;
import com.fyxt.w.common.vo.MassSendAllResultVO;
import com.fyxt.w.common.vo.MediaUploadResultVO;
import com.fyxt.w.common.vo.UploadImgResultVO;
import com.fyxt.w.common.vo.UploadNewsResultVO;

public class WeChatMsgSendUtils {
	
	private static Logger logger = Logger.getLogger(WeChatMsgSendUtils.class);

	private static final String APP_ID = "wxeb2e7c5fbb195094";
	private static final String APP_SECRET = "6572864b862b5ba7f202c10094fb0432";
	
	//获取授权URL
	private static final String GET_ACCESS_TOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token";
	
	//上传临时素材URL
	private static final String MEDIA_UPLOAD_URL = "https://api.weixin.qq.com/cgi-bin/media/upload";
	
	//上传永久素材URL
	private static final String MATERIAL_ADD_MATERIAL_URL = "https://api.weixin.qq.com/cgi-bin/material/add_material";
	
	//上传图文消息内的图片获取URL的URL
	private static final String MEDIA_UPLOAD_IMG_URL = "https://api.weixin.qq.com/cgi-bin/media/uploadimg";
	
	//上传图文消息素材URL
	private static final String MEDIA_UPLOAD_NEWS_URL = "https://api.weixin.qq.com/cgi-bin/media/uploadnews";
	
	//根据标签进行群发URL
	private static final String MSG_MASS_SEND_ALL_URL = "https://api.weixin.qq.com/cgi-bin/message/mass/sendall";
	
	/******
	 * 获取授权码
	 * @return access_token
	 */
	public static String getAccessToken(){
		AccessTokenResultVO accessTokenResult = null;
		
		StringBuffer url = new StringBuffer(GET_ACCESS_TOKEN_URL);
			url.append("?grant_type=client_credential");
			url.append("&appid=" + APP_ID);
			url.append("&secret=" + APP_SECRET);
		String result = HttpClientUtils.get(url.toString());
		if(StringUtils.isNotBlank(result)){
			try{
				accessTokenResult = JSONObject.parseObject(result, AccessTokenResultVO.class);
			}catch(Exception e){
				logger.error("get wechat access token result parse error:::" + e);
				logger.error("get wechat access token result :::" + result);
			}
		}
		
		if(null != accessTokenResult && StringUtils.isNotBlank(accessTokenResult.getAccess_token())){
			return accessTokenResult.getAccess_token();
		}else{
			return "";
		}
	}
	
	/******
	 * 上传临时素材
	 * @param accessToken 授权码
	 * @param absoluteMeterialPath  素材绝对路径
	 * @param type 媒体文件类型，分别有图片（image）、语音（voice）、视频（video）和缩略图（thumb）
	 * @return thumb_media_id 新增的临时素材的thumb_media_id
	 */
	public static String mediaUpload(String accessToken, String meterialAbsolutePath, String type){
		MediaUploadResultVO mediaUploadResult = null;
		String url = MEDIA_UPLOAD_URL + "?access_token="+accessToken+"&type="+type;
		String result = postImgFile(url, meterialAbsolutePath);
		
		if(StringUtils.isNotBlank(result)){
			try{
				mediaUploadResult = JSONObject.parseObject(result, MediaUploadResultVO.class);
			}catch(Exception e){
				logger.error("wechat media upload result parse error:::" + e);
				logger.error("wechat media upload result:::" + result);
			}
		}
		if(null != mediaUploadResult && StringUtils.isNotBlank(mediaUploadResult.getThumb_media_id())){
			return mediaUploadResult.getThumb_media_id();
		}else{
			if(StringUtils.isNotBlank(result) && -1 != result.indexOf("40006") ){//资源超过大小限制(64k)
				return "meidaSizeError";
			}else{
				return "";
			}
		}
	}
	
	/******
	 * 上传永久素材
	 * @param accessToken 授权码
	 * @param absoluteMeterialPath  素材绝对路径
	 * @param type 媒体文件类型，分别有图片（image）、语音（voice）、视频（video）和缩略图（thumb）
	 * @return media_id 新增的永久素材的media_id
	 */
	public static String addMaterial(String accessToken, String meterialAbsolutePath, String type){
		AddMaterialResultVO addMaterialResult = null;
		String url = MATERIAL_ADD_MATERIAL_URL + "?access_token="+accessToken+"&type="+type;
		String result = postImgFile(url, meterialAbsolutePath);
		
		if(StringUtils.isNotBlank(result)){
			try{
				addMaterialResult = JSONObject.parseObject(result, AddMaterialResultVO.class);
			}catch(Exception e){
				logger.error("wechat add material result parse error:::" + e);
				logger.error("wechat add material result:::" + result);
			}
		}
		if(null != addMaterialResult && StringUtils.isNotBlank(addMaterialResult.getMedia_id())){
			return addMaterialResult.getMedia_id();
		}else{
			return "";
		}
	}
	
	/******
	 * 上传图文消息内的图片获取URL
	 * @param accessToken 授权码
	 * @param imgAbsolutePath 图片素材绝对路径
	 * @return 图片访问URL(绝对路径)
	 */
	public static String uploadImg(String accessToken, String imgAbsolutePath){
		UploadImgResultVO uploadImgResul = null;
		String url = MEDIA_UPLOAD_IMG_URL + "?access_token=" + accessToken;
		String result = postImgFile(url, imgAbsolutePath);
		
		if(StringUtils.isNotBlank(result)){
			try{
				uploadImgResul = JSONObject.parseObject(result, UploadImgResultVO.class);
			}catch(Exception e){
				logger.error("wechat upload img result parse error:::" + e);
				logger.error("wechat upload img result :::" + result);
			}
		}
		
		if(null != uploadImgResul && StringUtils.isNotBlank(uploadImgResul.getUrl())){
			return uploadImgResul.getUrl();
		}else{
			return "";
		}
	}
	
	/******
	 * 上传图文消息素材
	 * @param accessToken
	 * @param title 标题
	 * @param thumbMediaId 图文消息的封面图片素材id
	 * @param showCoverPic 是否展示封面照(1:展示; 0:不展示)
	 * @param author 作者
	 * @param digest 图文消息的摘要，仅有单图文消息才有摘要，多图文此处为空
	 * @param content 图文消息的具体内容，支持HTML标签，必须少于2万字符，小于1M，且此处会去除JS,涉及图片url必须来源"上传图文消息内的图片获取URL"接口获取。外部图片url将被过滤。
	 * @param contentSourceUrl 图文消息的原文地址，即点击“阅读原文”后的URL
	 * @return media_id 媒体文件/图文消息上传后获取的唯一标识
	 */
	public static String uploadNews(String accessToken, String title, String thumbMediaId, int showCoverPic, String author, String digest, String content, String contentSourceUrl){
		UploadNewsResultVO uploadNewsResult = null;
		
		StringBuffer body = new StringBuffer("{\"articles\": [{");
			body.append("\"title\":").append("\"" + title + "\"");
			body.append(",");
			body.append("\"thumb_media_id\":").append("\"" + thumbMediaId + "\"");
			body.append(",");
			body.append("\"show_cover_pic\":").append(showCoverPic);//展示封面素材
			body.append(",");
			body.append("\"author\":").append("\"" + author + "\"");
			body.append(",");
			body.append("\"digest\":").append("\"" + digest + "\"");
			body.append(",");
			body.append("\"content\":").append("\"" + content + "\"");
			body.append(",");
			body.append("\"content_source_url\":").append("\"" + contentSourceUrl + "\"");
		body.append("}]}");
		String result = HttpClientUtils.post(MEDIA_UPLOAD_NEWS_URL + "?access_token=" + accessToken, body.toString());
		
		if(StringUtils.isNotBlank(result)){
			try{
				uploadNewsResult = JSONObject.parseObject(result, UploadNewsResultVO.class);
			}catch(Exception e){
				logger.error("wechat upload news result parse error:::" + e);
				logger.error("wechat upload news result:::" + result);
			}
		}
		
		if(null != uploadNewsResult && StringUtils.isNotBlank(uploadNewsResult.getMedia_id())){
			return uploadNewsResult.getMedia_id();
		}else{
			return "";
		}
	}
	
	/******
	 * 根据标签进行图文消息发送
	 * @param accessToken
	 * @param mediaId
	 */
	
	public static String msgMassSendAll(String accessToken, String newsMediaId){
		MassSendAllResultVO massSendAllResult = null;
		
        //添加参数  
		String body = "{\"filter\":{\"is_to_all\":true,\"tag_id\":\"\"},\"mpnews\":{\"media_id\":\""+newsMediaId+"\"},\"msgtype\":\"mpnews\",\"send_ignore_reprint\":1}";
		String result = HttpClientUtils.post(MSG_MASS_SEND_ALL_URL + "?access_token=" + accessToken, body);

		if(StringUtils.isNotBlank(result)){
			try{
				massSendAllResult = JSONObject.parseObject(result, MassSendAllResultVO.class);
			}catch(Exception e){
				logger.error("wechat upload news result parse error:::" + e);
				logger.error("wechat upload news result:::" + result);
			}
		}
		
		if(null != massSendAllResult && (0 == massSendAllResult.getErrcode())){
			return "yes";
		}else if(null != massSendAllResult && (45028 == massSendAllResult.getErrcode())){//超过群发接口限制
			return "limit";
		}else{
			return "no";
		}
	}
	
	/******
	 * 提取文本中的图片路径
	 * @param htmlCode
	 * @return
	 */
	public static List<String> getImageSrc(String htmlCode) {
	    List<String> imageSrcList = new ArrayList<String>();
	    
	    Pattern p = Pattern.compile("<img\\b[^>]*\\bsrc\\b\\s*=\\s*('|\")?([^'\"\n\r\f>]+(\\.jpg|\\.bmp|\\.eps|\\.gif|\\.mif|\\.miff|\\.png|\\.tif|\\.tiff|\\.svg|\\.wmf|\\.jpe|\\.jpeg|\\.dib|\\.ico|\\.tga|\\.cut|\\.pic)\\b)[^>]*>", Pattern.CASE_INSENSITIVE);
	    Matcher m = p.matcher(htmlCode);
	    
	    String quote = null;
	    String src = null;
	    while (m.find()) {
	        quote = m.group(1);
	        
	        src = (quote == null || quote.trim().length() == 0) ? m.group(2).split("\\s+")[0] : m.group(2);
	        imageSrcList.add(src);
	 
	    }
	    return imageSrcList;
	}
	
	/******
	 * 上传永久图片素材
	 * @param url
	 * @param imgPath
	 * @return
	 */
	public static String postImgFile(String url, String imgPath) {
		URL fileUrl = null;
		try {
			fileUrl = new URL(imgPath);
		} catch (MalformedURLException e0) {
			logger.error("postFile malformed URL exception:::", e0);
		}
		
		String fileStr = fileUrl.getFile();
		String fileName = fileStr.substring(fileStr.lastIndexOf("/") + 1);
		
		String result = null;
		try {
			URL myUrl = new URL(url);
			HttpURLConnection conn = (HttpURLConnection) myUrl.openConnection();
			conn.setConnectTimeout(5000);
			conn.setReadTimeout(30000);
			conn.setDoOutput(true);
			conn.setDoInput(true);
			conn.setUseCaches(false);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Connection", "Keep-Alive");
			conn.setRequestProperty("Cache-Control", "no-cache");
			String boundary = "-----------------------------" + System.currentTimeMillis();
			conn.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);

			OutputStream output = conn.getOutputStream();
			output.write(("--" + boundary + "\r\n").getBytes());
			output.write(String.format("Content-Disposition: form-data; name=\"media\"; filename=\"%s\"\r\n", fileName).getBytes());
			output.write("Content-Type: image/jpeg \r\n\r\n".getBytes());
			byte[] data = new byte[1024];
			int len = 0;
			InputStream input = fileUrl.openStream();
			while ((len = input.read(data)) > -1) {
				output.write(data, 0, len);
			}
			output.write(("\r\n--" + boundary + "\r\n\r\n").getBytes());
			output.flush();
			output.close();
			input.close();
			
			InputStream resp = conn.getInputStream();
			StringBuffer sb = new StringBuffer();
			while ((len = resp.read(data)) > -1){
				sb.append(new String(data, 0, len, "utf-8"));
			}
			resp.close();
			
			result = sb.toString();
		} catch (ClientProtocolException e) {
			logger.error("postFile，不支持http协议", e);
		} catch (IOException e) {
			logger.error("postFile数据传输失败", e);
		}
		return result;
	}
	
	/*
	public static void main(String[] args) {
		String accessToken = getAccessToken();
		System.out.println("accessToken=" + accessToken);
		
		//封面图片
		String thumbMediaId = mediaUpload(accessToken, "http://localhost:9999/upload/2017/04/27/test.jpg" , "thumb");
		int showCoverPic = 1;//默认展示封面照
		System.out.println("thumbMediaId=" + thumbMediaId);
		
		//替换文本中的图片路径 begin
		String htmlCodes = "安徽合肥...<img src='http://localhost:9999/upload/2017/04/27/Penguins_Uwk.jpg' /><img alt='' src='http://localhost:9999/upload/2017/04/27/Penguins_Uwk.jpg' style='float:left; height:240px; width:380px' />";
		List<String> srcs = getImageSrc(htmlCodes);
		for (String src : srcs) {
			htmlCodes = htmlCodes.replaceAll(src, uploadImg(accessToken, src));
		}
		System.out.println("htmlCodes=" + htmlCodes);
		//替换文本中的图片路径 end
		
		String newsMediaId = uploadNews(accessToken, "标题", thumbMediaId, showCoverPic, "", "", htmlCodes, "");
		System.out.println("newsMediaId=" + newsMediaId);
		
	
		boolean flag = msgMassSendAll(accessToken, newsMediaId);
		if(flag){
			System.out.println("发送成功！");
		}else{
			System.out.println("发送失败！");
		}
	}
	*/
}
