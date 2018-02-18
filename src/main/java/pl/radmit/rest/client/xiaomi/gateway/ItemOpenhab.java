package pl.radmit.rest.client.xiaomi.gateway;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by radek on 18.02.2018.
 */
@XmlRootElement
@JsonIgnoreProperties(ignoreUnknown = true)
public class ItemOpenhab {

    private String category;
    private String name;
    private String label;
    private String state;

    public ItemOpenhab() {
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
