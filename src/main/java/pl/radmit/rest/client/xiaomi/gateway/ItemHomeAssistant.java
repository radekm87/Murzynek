package pl.radmit.rest.client.xiaomi.gateway;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

/**
 * Created by radek on 18.02.2018.
 */
@XmlRootElement
@JsonIgnoreProperties(ignoreUnknown = true)
public class ItemHomeAssistant {

    private String entity_id;
    private String state;
    // @JsonProperty("attributes")
    // @JsonFormat(with = JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)
    private ItemAttributesHA attributes;

    public ItemHomeAssistant() {
    }

    public String getEntity_id() {
        return entity_id;
    }

    public void setEntity_id(String entity_id) {
        this.entity_id = entity_id;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public ItemAttributesHA getAttributes() {
        return attributes;
    }

    public void setAttributes(ItemAttributesHA attributes) {
        this.attributes = attributes;
    }
}


//
//
//{
//        "attributes": {
//        "battery": 97,
//        "device_class": "temperature",
//        "friendly_name": "P9 Temp",
//        "humidity": 40.49,
//        "linkquality": 49,
//        "temperature": 27.39,
//        "unit_of_measurement": "°C",
//        "voltage": 2995
//        },
//
//        "entity_id": "sensor.0x00158d00018256d4_temperature",
//        "last_changed": "2020-05-03T16:53:00.228386+00:00",
//        "last_updated": "2020-05-03T16:53:00.228386+00:00",
//        "state": "27.39"
//        }