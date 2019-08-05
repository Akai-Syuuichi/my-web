package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Character;

public class CharacterValidator {

    public static List<String> validate(Character m) {
        List<String> errors = new ArrayList<String>();

        String url_error = _validateUrl(m.getUrl());
        if (!url_error.equals("")) {
            errors.add(url_error);
        }

        String character_name_error = _validateCharacter_name(m.getCharacter_name());
        if (!character_name_error.equals("")) {
            errors.add(character_name_error);
        }

        String age_error = _validateAge(m.getAge());
        if (!age_error.equals("")) {
            errors.add(age_error);
        }

        String gender_error = _validateGender(m.getGender());
        if (!gender_error.equals("")) {
            errors.add(gender_error);
        }

        String hometown_error = _validateHometown(m.getHometown());
        if (!hometown_error.equals("")) {
            errors.add(hometown_error);
        }

        String first_appearance_error = _validateFirst_appearance(m.getFirst_appearance());
        if (!first_appearance_error.equals("")) {
            errors.add(first_appearance_error);
        }

        String voice_actor_error = _validateVoice_actor(m.getVoice_actor());
        if (!voice_actor_error.equals("")) {
            errors.add(voice_actor_error);
        }

        String occupation_error = _validateOccupation(m.getOccupation());
        if (!occupation_error.equals("")) {
            errors.add(occupation_error);
        }

        String speciality_error = _validateSpeciality(m.getSpeciality());
        if (!speciality_error.equals("")) {
            errors.add(speciality_error);
        }

        String category_error = _validateCategory(m.getCategory());
        if (!category_error.equals("")) {
            errors.add(category_error);
        }

        return errors;

    }

    private static String _validateUrl(String url) {
        if (url == null || url.equals("")) {
            return "画像のURLを入力してください。";
        }

        return "";
    }

    private static String _validateCharacter_name(String character_name) {
        if (character_name == null || character_name.equals("")) {
            return "キャラクター名を入力してください。";
        }

        return "";
    }

    private static String _validateAge(String age) {
        if (age == null || age.equals("")) {
            return "年齢を入力してください。";
        }

        return "";
    }

    private static String _validateGender(String gender) {
        if (gender == null || gender.equals("")) {
            return "性別を入力してください。";
        }

        return "";
    }

    private static String _validateHometown(String hometown) {
        if (hometown == null || hometown.equals("")) {
            return "出身地を入力してください。";
        }

        return "";
    }

    private static String _validateFirst_appearance(String first_appearance) {
        if (first_appearance == null || first_appearance.equals("")) {
            return "初登場の話を入力してください。";
        }

        return "";
    }

    private static String _validateVoice_actor(String voice_actor) {
        if (voice_actor == null || voice_actor.equals("")) {
            return "声優名を入力してください。";
        }

        return "";
    }

    private static String _validateOccupation(String occupation) {
        if (occupation == null || occupation.equals("")) {
            return "職業を入力してください。";
        }

        return "";
    }

    private static String _validateSpeciality(String speciality) {
        if (speciality == null || speciality.equals("")) {
            return "特技を入力してください。";
        }

        return "";
    }

    private static String _validateCategory(String category) {
        if (category == null || category.equals("")) {
            return "カテゴリーを選択してください。";
        }
        return "";
    }
}