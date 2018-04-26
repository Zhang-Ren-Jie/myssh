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
	
	private Integer searchText;
	
	private String searchTextPy;
	
	public String errmsg;
	
	public Integer xint;
	
	//新規登録、変更、削除後最新データを取得
	public String doQuery(){
		searchText = master.getId();
		
		masters = masterService.queryMaster(searchText,Maintenance.class);
		
		if (masters.size() > 0) {
			master = masters.get(0);
		} else {
			master = null;
		}
		addActionMessage("执行成功了^-^");
		return SUCCESS;
	}
		
	public String doAdd(){
		String result = "";
		System.out.println("新規登録処理を開始");
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //显示的格式

			searchTextPy = master.getPyakucd();
			if (searchTextPy != null ) {
				System.out.println("略CD すでに存在している");
				addActionMessage("略CD すでに存在している");
				return SUCCESS;
			}
			
			xint=(int)(Math.random()*900)+100;
			master.setId(xint);
			master.setToymd(sdf.format(new Date()));
		    master.setKymd(sdf.format(new Date()));

			if (master.getId() != null ) {
				System.out.println("ID すでに存在している");
				addActionMessage("ID すでに存在している");
				return SUCCESS;
			}
			
			
			masterService.addMaster(master);
			addActionMessage("新規登録処理を終了");
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

			searchTextPy = master.getPyakucd();
			if (searchTextPy == null | "".equals(searchTextPy)) {
				System.out.println("更新CDを入力してください。");
				addActionMessage("更新CDを入力してください。");
				return SUCCESS;
			}
			
			masters = masterService.queryMaster(searchText,Maintenance.class);
			if (masters.size() == 0) {
				System.out.println("更新対象レコードがありません。");
				addActionMessage("更新対象レコードがありません。");
				return SUCCESS;
			}

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //显示的格式	
			master.setId(masters.get(0).getId());
			master.setToymd(sdf.format(new Date()));
			master.setKymd(sdf.format(new Date()));
			masterService.modifyMaster(master);
			addActionMessage("更新処理を終了");
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
			searchTextPy = master.getPyakucd();
			if (searchTextPy == null | "".equals(searchTextPy)) {
				errmsg = "削除のキー年月日を入力してください。";
				addActionMessage("削除のキー年月日を入力してください。");
				System.out.println("削除のキー年月日を入力してください。");
				return SUCCESS;
			}
			
			masters = masterService.queryMaster(searchText,Maintenance.class);
			if (masters.size() == 0) {
				errmsg = "削除対象レコードがありません。";
				addActionMessage("削除対象レコードがありません。");
				System.out.println("削除対象レコードがありません。");
				return SUCCESS;
			}
			
			int param = masters.get(0).getId();
			masterService.deleteMaster(param,Maintenance.class);
			errmsg = "削除対象レコードが削除しました。";
			addActionMessage("削除処理を終了");
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
