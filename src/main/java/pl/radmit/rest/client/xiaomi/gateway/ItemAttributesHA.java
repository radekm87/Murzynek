package pl.radmit.rest.client.xiaomi.gateway;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;


//@XmlRootElement
@JsonIgnoreProperties(ignoreUnknown = true)
public class ItemAttributesHA {

    private String friendly_name;
    private String humidity;
    private String unit_of_measurement;
    private String device_class;

    public ItemAttributesHA() {
    }

    public String getFriendly_name() {
        return friendly_name;
    }

    public String getHumidity() {
        return humidity;
    }

    public String getUnit_of_measurement() {
        return unit_of_measurement;
    }

    public String getDevice_class() {
        return device_class;
    }
}