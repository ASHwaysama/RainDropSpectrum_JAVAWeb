package bean;

import java.io.Serializable;

public class displayBean  implements Serializable{
	//ID LEIBIE ,JIBIE,MULU,CITIAO,DUYIN,HANYIID,HANYI,
	//LIJU,Cou_ID,Tea_ID
	
	private int Sta_ID;
	private String Sta_TimeIn;
	private String Sta_TimeStart;
	private String Sta_TimeEnd;
	private String Sta_Lon;
	private String Sta_Lat;
	private String Type;
	private double Visibility;
	private double Precipitation;
	private double Intensity ;
	private double Dmax;
	
	
	public int getSta_ID() {
		return Sta_ID;
	}
	public void setSta_ID(int Sta_ID) {
		this.Sta_ID = Sta_ID;
	}	
			
	public String getSta_TimeIn() {
		return Sta_TimeIn;
	}
	public void setSta_TimeIn(String Sta_TimeIn) {
		this.Sta_TimeIn = Sta_TimeIn;
	}
	
	public String getSta_TimeStart() {
		return Sta_TimeStart;
	}
	public void setSta_TimeStart(String Sta_TimeStart) {
		this.Sta_TimeStart = Sta_TimeStart;
	}
	
	public String getSta_TimeEnd() {
		return Sta_TimeEnd;
	}
	public void setSta_TimeEnd(String Sta_TimeEnd) {
		this.Sta_TimeEnd = Sta_TimeEnd;
	}
	public String getSta_Lon() {
		return Sta_Lon;
	}
	public void setSta_Lon(String Sta_Lon) {
		this.Sta_Lon = Sta_Lon;
	}
	
	public String getSta_Lat() {
		return Sta_Lat;
	}
	public void setSta_Lat(String Sta_Lat) {
		this.Sta_Lat = Sta_Lat;
	}
	
	public String getType() {
		return Type;
	}
	public void setType(String Type) {
		this.Type = Type;
	}
	
	public double Visibility() {
		return Visibility;
	}
	public void setVisibility(double Visibility) {
		this.Visibility = Visibility;
	}
	
	public double Precipitation() {
		return Precipitation;
	}
	public void setPrecipitation(double Precipitation) {
		this.Precipitation = Precipitation;
	}	
	public double Intensity() {
		return Intensity;
	}
	public void setIntensity(double Intensity) {
		this.Intensity = Intensity;
	}	
	public double Dmax() {
		return Dmax;
	}
	public void setDmax(double Dmax) {
		this.Dmax = Dmax;
	}
	
	
}
	
	