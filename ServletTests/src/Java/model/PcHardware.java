package model;

/**
 * Created by mihai on 2/25/2018.
 */
public class PcHardware {
    private String mac_address,ip_address,cpu_type,gpu_type;

    public PcHardware(){}

    public PcHardware(String mac_address, String ip_address, String cpu_type, String gpu_type) {
        this.mac_address = mac_address;
        this.ip_address = ip_address;
        this.cpu_type = cpu_type;
        this.gpu_type = gpu_type;
    }

    public String getMac_address() {
        return mac_address;
    }

    public void setMac_address(String mac_address) {
        this.mac_address = mac_address;
    }

    public String getIp_address() {
        return ip_address;
    }

    public void setIp_address(String ip_address) {
        this.ip_address = ip_address;
    }

    public String getCpu_type() {
        return cpu_type;
    }

    public void setCpu_type(String cpu_type) {
        this.cpu_type = cpu_type;
    }

    public String getGpu_type() {
        return gpu_type;
    }

    public void setGpu_type(String gpu_type) {
        this.gpu_type = gpu_type;
    }
}
