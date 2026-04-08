package my.member;

public class Member {
    private String memberId;
    private String password;
    private String name;
    private String email;

    // 기본 생성자 (useBean 필수)
    public Member() {
    }

    // 생성자
    public Member(String memberId, String password, String name, String email) {
        this.memberId = memberId;
        this.password = password;
        this.name = name;
        this.email = email;
    }

    // getter / setter

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}