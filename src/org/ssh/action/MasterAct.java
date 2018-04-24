package org.ssh.action;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import org.ssh.pojo.Maintenance;
import org.ssh.service.MasterService;
import com.opensymphony.xwork2.ActionSupport;


public class MasterAct extends ActionSupport {

	private static final long serialVersionUID = -281275682819237996L;
	
	private Maintenance master = new Maintenance(); 
	
	private MasterService<Maintenance> masterService;
	
	private List<Maintenance> masters;
	
	private String searchText;
	
	private String searchTextToymd;
	

	
	public String errmsg;
	
	//新規登録、変更、削除後最新データを取得
	public String doQuery(){
		searchText = master.getPyakucd();
		
		masters = masterService.queryMaster(searchText,Maintenance.class);
		
		if (masters.size() > 0) {
			master = masters.get(0);
		} else {
			master = null;
		}
		
		return SUCCESS;
	}
		
	public String doAdd(){
		String result = "";
		System.out.println("新規登録処理を開始");
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //显示的格式
			
			//登録前に、存在性チェック
			searchText = master.getPyakucd();
			System.out.println("pyakucd>>>>>>"+master.getPyakucd());
			System.out.println("Hannm>>>>>>>>"+master.getHannm());
			System.out.println("Hancd>>>>>>>>"+master.getHancd());
			System.out.println("Hanknm>>>>>>>"+master.getHanknm());

			
			
			if (searchText == null | "".equals(searchText)) {
				errmsg = "新規登録のキー屠畜日付を入力してください。";
				System.out.println("新規登録のキー屠畜日付を入力してください。");
				return SUCCESS;
			}
//			-----更新日付存在性チェック----------------------------
			searchTextToymd = master.getToymd();
			if (searchTextToymd == null | "".equals(searchTextToymd)) {
				errmsg = "更新日付を入力してください。";
				System.out.println("更新日付を入力してください。");
				return SUCCESS;
			}
		          
		     master.setToymd(sdf.format(new Date()));
		     master.setKymd(sdf.format(new Date()));
			
			masters = masterService.queryMaster(searchText,Maintenance.class);
			if (masters.size() != 0) {
				errmsg = "データが既に登録しましたので、登録できません。";
				System.out.println("データが既に登録しましたので、登録できません。");
				return SUCCESS;
			}
				
			
			masterService.addMaster(master);
			System.out.println("新規登録対象レコードが登録しました。");
			System.out.println("新規登録処理を終了");
		    result = doQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	public String doEdit(){
		System.out.println("更新処理を開始");
		try {

			//更新に、存在性チェック
			searchText = master.getPyakucd();
			if (searchText == null | "".equals(searchText)) {
				errmsg = "更新のキー屠畜日付を入力してください。";
				System.out.println("更新のキー屠畜日付を入力してください。");
				return SUCCESS;
			}
			//-----更新日付存在性チェック----------------------------
			searchTextToymd = master.getPyakucd();
			if (searchTextToymd == null | "".equals(searchTextToymd)) {
				errmsg = "更新日付を入力してください。";
				System.out.println("更新日付を入力してください。");
				return SUCCESS;
			}
			
			masters = masterService.queryMaster(searchText,Maintenance.class);
			if (masters.size() == 0) {
				errmsg = "更新対象レコードがありません。";
				System.out.println("更新対象レコードがありません。");
				return SUCCESS;
			}

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //显示的格式	
			master.setId(masters.get(0).getId());
			master.setToymd(sdf.format(new Date()));
			master.setKymd(sdf.format(new Date()));
			
			masterService.modifyMaster(master);
			System.out.println("更新対象レコードが更新しました。");
			System.out.println("更新処理を終了");	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return doQuery();
	}	
	
	
	
	public String doDelete(){
	    System.out.println("削除処理を開始");
		try {
			//削除前に、存在性チェック
			searchText = master.getPyakucd();
			if (searchText == null | "".equals(searchText)) {
				errmsg = "削除のキー年月日を入力してください。";
				System.out.println("削除のキー年月日を入力してください。");
				return SUCCESS;
			}
			
			masters = masterService.queryMaster(searchText,Maintenance.class);
			if (masters.size() == 0) {
				errmsg = "削除対象レコードがありません。";
				System.out.println("削除対象レコードがありません。");
				return SUCCESS;
			}
			
			int param = masters.get(0).getId();
			
			masterService.deleteMaster(param,Maintenance.class);
			
			errmsg = "削除対象レコードが削除しました。";
			System.out.println("削除対象レコードが削除しました。");
			System.out.println("削除処理を終了");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doQuery();
	}

	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}
	public Maintenance getMaster() {
		return master;
	}
	public void setMaster(Maintenance master) {
		this.master = master;
	}
	public MasterService<Maintenance> getMasterService() {
		return masterService;
	}
	public void setMasterService(MasterService<Maintenance> masterService) {
		this.masterService = masterService;
	}
	public List<Maintenance> getMasters() {
		return masters;
	}
	public void setMasters(List<Maintenance> masters) {
		this.masters = masters;
	}

	public String getErrmsg() {
		return errmsg;
	}

	public void setErrmsg(String errmsg) {
		this.errmsg = errmsg;
	}
}
