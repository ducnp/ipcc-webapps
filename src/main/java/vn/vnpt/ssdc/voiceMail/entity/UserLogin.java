package vn.vnpt.ssdc.voiceMail.entity;
import javax.persistence.*;
import java.util.Map;

@Entity
@Table(name = "user_login")
public class UserLogin {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="id")
    private Long id;
    @Column(name="username")
    private String username;
    @Column(name="password")
    private String password;

    public UserLogin(){}

    public void setParams(Map<String, String> params) {
        if (params.get("id") != null) {
            this.id = Long.valueOf(params.getOrDefault("id", null).trim());
        } else {
            this.id = null;
        }
        ///////////
        String username = params.getOrDefault("username", null);
        if (checkNull(username)) {
            this.username = null;
        } else {
            this.username = username;
        }
        /////////
        String password = params.getOrDefault("password", null);
        if (checkNull(password)) {
            this.password = null;
        } else {
            this.password = password;
        }
        /////////
    }

    private boolean checkNull(String str) {
        boolean blCheck = false;
        if (str == null || str.equalsIgnoreCase("all") || str.equalsIgnoreCase("") || str.equalsIgnoreCase("null")) {
            blCheck = true;
        } else {
            blCheck = false;
        }

        return blCheck;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
