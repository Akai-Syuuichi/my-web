package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
        @NamedQuery(name = "getAllCharacters", query = "SELECT m FROM Character AS m ORDER BY m.id DESC")
})
@Table(name = "characters")
public class Character {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "url", length = 255, nullable = false)
    private String url;

    @Column(name = "character_name", length = 255, nullable = false)
    private String character_name;

    @Column(name = "age", length = 255, nullable = false)
    private Integer age;

    @Column(name = "gender", length = 255, nullable = false)
    private String gender;

    @Column(name = "hometown", length = 255, nullable = false)
    private String hometown;

    @Column(name = "first_appearance", length = 255, nullable = false)
    private String first_appearance;

    @Column(name = "voice_actor", length = 255, nullable = false)
    private String voice_actor;

    @Column(name = "occupation", length = 255, nullable = false)
    private String occupation;

    @Column(name = "speciality", length = 255, nullable = false)
    private String speciality;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCharacter_name() {
        return character_name;
    }

    public void setCharacter_name(String character_name) {
        this.character_name = character_name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getFirst_appearance() {
        return first_appearance;
    }

    public void setFirst_appearance(String first_appearance) {
        this.first_appearance = first_appearance;
    }

    public String getVoice_actor() {
        return voice_actor;
    }

    public void setVoice_actor(String voice_actor) {
        this.voice_actor = voice_actor;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

}
