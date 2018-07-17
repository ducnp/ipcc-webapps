package vn.vnpt.ssdc.calling.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "campaign_name")
public class CampaignName {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)

    private Integer id;
    @Column(name="name")
    private String name;
    @Column(name="header")
    private String header;
    @Column(name="header_db")
    private String headerDb;

    public CampaignName(){

    }

    public CampaignName(String name, String header, String headerDb) {
        this.name = name;
        this.header = header;
        this.headerDb = headerDb;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getHeaderDb() {
        return headerDb;
    }

    public void setHeaderDb(String headerDb) {
        this.headerDb = headerDb;
    }
}
