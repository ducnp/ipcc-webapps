package vn.vnpt.ssdc.voiceMail.entity;
import javax.persistence.*;

@Entity
@Table(name = "brand_call")
public class BrandCall {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="show_value")
    private String showValue;
    @Column(name="search_value")
    private String searchValue;
    @Column(name="description")
    private String description;

    public BrandCall(){

    }

    public BrandCall(String showValue, String searchValue,String description) {
        this.showValue = showValue;
        this.searchValue = searchValue;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShowValue() {
        return showValue;
    }

    public void setShowValue(String showValue) {
        this.showValue = showValue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSearchValue() {
        return searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }
}
