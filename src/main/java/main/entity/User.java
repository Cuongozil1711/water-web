package main.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "m_user")
public class User {
    private Long id;
    private String userName;
    private String password;
    private String authority;
    private String name;
    private String gender;
    private String phone;
    private String email;
    private String sokoCd;
    private String deleteFlg;
    private Timestamp createDate;
    private String creatorCd;
    private Timestamp updateDate;
    private String updaterCd;

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_name")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "authority")
    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "gender")
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "soko_cd")
    public String getSokoCd() {
        return sokoCd;
    }

    public void setSokoCd(String sokoCd) {
        this.sokoCd = sokoCd;
    }

    @Basic
    @Column(name = "delete_flg")
    public String getDeleteFlg() {
        return deleteFlg;
    }

    public void setDeleteFlg(String deleteFlg) {
        this.deleteFlg = deleteFlg;
    }

    @Basic
    @Column(name = "create_date")
    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
    }

    @Basic
    @Column(name = "creator_cd")
    public String getCreatorCd() {
        return creatorCd;
    }

    public void setCreatorCd(String creatorCd) {
        this.creatorCd = creatorCd;
    }

    @Basic
    @Column(name = "update_date")
    public Timestamp getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Timestamp updateDate) {
        this.updateDate = updateDate;
    }

    @Basic
    @Column(name = "updater_cd")
    public String getUpdaterCd() {
        return updaterCd;
    }

    public void setUpdaterCd(String updaterCd) {
        this.updaterCd = updaterCd;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User mUser = (User) o;

        if (id != mUser.id) return false;
        if (!Objects.equals(userName, mUser.userName)) return false;
        if (!Objects.equals(password, mUser.password)) return false;
        if (!Objects.equals(authority, mUser.authority)) return false;
        if (!Objects.equals(name, mUser.name)) return false;
        if (!Objects.equals(gender, mUser.gender)) return false;
        if (!Objects.equals(phone, mUser.phone)) return false;
        if (!Objects.equals(email, mUser.email)) return false;
        if (!Objects.equals(sokoCd, mUser.sokoCd)) return false;
        if (!Objects.equals(deleteFlg, mUser.deleteFlg)) return false;
        if (!Objects.equals(createDate, mUser.createDate)) return false;
        if (!Objects.equals(creatorCd, mUser.creatorCd)) return false;
        if (!Objects.equals(updateDate, mUser.updateDate)) return false;
        if (!Objects.equals(updaterCd, mUser.updaterCd)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (authority != null ? authority.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (gender != null ? gender.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (sokoCd != null ? sokoCd.hashCode() : 0);
        result = 31 * result + (deleteFlg != null ? deleteFlg.hashCode() : 0);
        result = 31 * result + (createDate != null ? createDate.hashCode() : 0);
        result = 31 * result + (creatorCd != null ? creatorCd.hashCode() : 0);
        result = 31 * result + (updateDate != null ? updateDate.hashCode() : 0);
        result = 31 * result + (updaterCd != null ? updaterCd.hashCode() : 0);
        return result;
    }
}
