package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "characters")
public class Character {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "character_name", length = 255, nullable = false)
    private String character_name;

    @Column(name = "age", length = 255, nullable = false)
    private Integer age;

    @Column(name = "gender", length = 255, nullable = false)
    private String gender;

    @Column(name = "hometown", length = 255, nullable = false)
    private String hometown;

    @Column(name = "first_appearance", length = 255, nullable = false)
    private Integer first_appearanse;

    @Column(name = "voice_actor", length = 255, nullable = false)
    private String voice_actor;

    @Column(name = "occupation", length = 255, nullable = false)
    private String occupation;

    @Column(name = "speciality", length = 255, nullable = false)
    private String speciality;

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

    public Integer getFirst_appearanse() {
        return first_appearanse;
    }

    public void setFirst_appearanse(Integer first_appearanse) {
        this.first_appearanse = first_appearanse;
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
