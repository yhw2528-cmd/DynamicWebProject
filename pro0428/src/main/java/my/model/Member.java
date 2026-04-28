package my.model;

import java.util.Date;  // ✅ Date import 추가

public class Member {
    private String memberId;
    private String password;
    private String name;
    private int age;
    private Date registerDate; // ✅ 소문자로 시작
    private String[] hobby;
    private String[] sub;

    public Member() {}  // ✅ 생성자 이름 오타 수정

    public Member(String memeberId, String password, String name, int age, Date registerDate,String[] hobby,String[] sub) {
        super();
        this.memberId = memeberId;
        this.password = password;
        this.name = name;
        this.age = age;
        this.registerDate = registerDate;  // ✅ 소문자로 통일
        this.hobby=hobby;   
        this.sub=sub;
}

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
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public Date getRegisterDate() {
        return registerDate;  // ✅ 소문자로 통일
    }
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;  // ✅ 소문자로 통일
    }

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String[] getSub() {
		return sub;
	}

	public void setSub(String[] sub) {
		this.sub = sub;
	}
    
}