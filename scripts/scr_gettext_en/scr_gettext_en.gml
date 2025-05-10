// @param text_id
function scr_gettext_en(_text_id){
switch(_text_id) {
	case "test1":
		scr_txt("Hi! This is a test string!")
		scr_txt("СОСАТ АМЭРЫКА")
			scr_option("ДЫА!!1", "test1-yes")
			scr_option("No =|", "test1-no")
		break
		case "test1-yes":
			scr_txt("НАШ СЛОНЯРА ZV")
			break
		case "test1-no":
			scr_txt("Ok")
			break
	case "test2":
		scr_txt("1234567890", "dots")
		scr_txt("qwertyuiopasdfghjklzxcvbnm", "toriel_test")
		scr_txt("йцукенгшщзхъф ывапролджэячсмитьбюё")
		break
	case "test3":
		scr_txt("testing123testing")
		break
	case "ruins_sign1":
		scr_txt(" * Only the fearless may proceed.   * Brave ones, foolish ones.       * Both walk not the middle road.")
		break
	case "ruins_sign2":
		scr_txt(" * Stay on the path.")
		break
	case "ruins_sign3":
		scr_txt(" * The western room is the east-\n   ern room's blueprint.")
		break
	case "ruins_sign4":
		scr_txt(" * Three out of four grey rocks\n   recommend you push them.")
		break
	case "ruins_sign5":
		scr_txt(" * Didn't you read the sign down-\n   stairs?")
		break
	case "ruins_sign6":
		scr_txt(" * Please don't step on the\n   leaves.")
		break
	case "torhouse_asr_frame":
		scr_txt(" * (An empty photo frame.)\n * (It's really dusty...)")
		break
	case "torhouse_asr_chest":
		scr_txt(" * (A box of kids' shoes in a\n   disparity of sizes.)")
		break
	}
}