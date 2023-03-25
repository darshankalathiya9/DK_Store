package Model;

public class Cart {
	private int CustomerID, PID, CID;
	private String PName, PPrice;

	public int getCustomerID() {
		return CustomerID;
	}

	public void setCustomerID(int customerID) {
		CustomerID = customerID;
	}

	public int getPID() {
		return PID;
	}

	public void setPID(int pID) {
		PID = pID;
	}

	public int getCID() {
		return CID;
	}

	public void setCID(int cID) {
		CID = cID;
	}

	public String getPName() {
		return PName;
	}

	public void setPName(String pName) {
		PName = pName;
	}

	public String getPPrice() {
		return PPrice;
	}

	public void setPPrice(String pPrice) {
		PPrice = pPrice;
	}

	@Override
	public String toString() {
		return "Cart [CustomerID=" + CustomerID + ", PID=" + PID + ", CID=" + CID + ", PName=" + PName + ", PPrice="
				+ PPrice + "]";
	}

}
