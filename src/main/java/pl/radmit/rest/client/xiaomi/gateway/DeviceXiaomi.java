package pl.radmit.rest.client.xiaomi.gateway;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by radek on 06.02.2018.
 */
@XmlRootElement
@JsonIgnoreProperties(ignoreUnknown = true)
public class DeviceXiaomi {

    private String link;
    private String state;
    private String label;

    public DeviceXiaomi() {
    }

    public DeviceXiaomi(String link, String state, String label) {
        this.link = link;
        this.state = state;
        this.label = label;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}