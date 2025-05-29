# 定义目标目录
$targetDir = "D:\meme\meme_emoji_rust_alpha\src\memes"

# 检查目录是否存在，如果不存在则创建
if (-not (Test-Path -Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force
}

# 要创建的文件名列表（不带.rs后缀）
$fileNames = @(
        "adoption",
        "all_the_days",
        "anyliew_people_I_like",
        "anyliew_struggling",
        "atri_finger",
        "atri_like",
        "begged_me",
        "chuanmama",
        "chuini",
        "contract",
        "daoguan",
        "deer_help",
        "dinosaur_head",
        "dog_face",
        "duidi",
        "durian",
        "fbi_photo",
        "fireworks_head",
        "fleshlight_air_play",
        "fleshlight_angel",
        "fleshlight_cleaning_liquid",
        "fleshlight_commemorative_edition_saint_sister",
        "fleshlight_hoshino_alice",
        "fleshlight_idol_heartbeat",
        "fleshlight_jissbon",
        "fleshlight_limited_edition_saint_sister",
        "fleshlight_liuli_zi",
        "fleshlight_machinery",
        "fleshlight_miyuko_kamimiya",
        "fleshlight_pure_buttocks",
        "fleshlight_purple_spirit",
        "fleshlight_saint_sister",
        "fleshlight_selena",
        "fleshlight_summer_liuli_zi",
        "fleshlight_taimanin_asgi",
        "gong_xi_fa_cai",
        "hitachi_mako_together",
        "huochailu",
        "ice_tea_head",
        "ikun_basketball",
        "ikun_durian_head",
        "ikun_head",
        "ikun_like",
        "ikun_why_are_you",
        "jd_delivery_person",
        "jd_takeout",
        "kfc",
        "kfc_thursday",
        "kou",
        "kurogames_carlotta_holdsign",
        "kurogames_cartethyia_holdsign",
        "kurogames_changli_finger",
        "kurogames_lingyang_holdsign",
        "kurogames_mortefi_holdsign",
        "kurogames_mp",
        "kurogames_phoebe_score_sheet",
        "kurogames_phoebe_say",
        "kurogames_rover_head",
        "kurogames_rover_holdsign",
        "kurogames_songlun",
        "kurogames_songlun_holdsign",
        "kurogames_verina_holdsign",
        "kurogames_zhezhi_holdsign",
        "mahiro_fuck",
        "mi_monkey",
        "mihoyo_elysia_come",
        "mihoyo_funina_card",
        "mihoyo_funina_death_penalty",
        "mihoyo_funina_finger",
        "mihoyo_funina_round_head",
        "mihoyo_funina_square_head",
        "mihoyo_genshin_impact_op",
        "mihoyo_genshin_impact_players",
        "mihoyo_liuwei_holdsign",
        "mihoyo_lynette_holdsign",
        "miss_in_my_sleep",
        "naruro_s_ninja",
        "orange",
        "shikanoko_noko",
        "shuai",
        "spend_christmas",
        "swimsuit_group_photo",
        "together_two",
        "torture_yourself",
        "xinxi_news",
        "yuzu_soft_ayachi_nene",
        "yuzu_soft_holdsign",
        "yuzu_soft_mako_hitachi_holdsign",
        "yuzu_soft_murasame_blackboard",
        "yuzu_soft_murasame_clothes",
        "yuzu_soft_murasame_dislike",
        "yuzu_soft_murasame_finger",
        "yuzu_soft_murasame_husband",
        "yuzu_soft_murasame_like",
        "yuzu_soft_murasame_say",
        "yuzu_soft_shocked"
)

# 为每个文件名创建.rs文件
foreach ($fileName in $fileNames) {
    $fullPath = Join-Path -Path $targetDir -ChildPath "$fileName.rs"
    if (-not (Test-Path -Path $fullPath)) {
        New-Item -ItemType File -Path $fullPath -Force
        Write-Host "已创建文件: $fullPath"
    } else {
        Write-Host "文件已存在，跳过: $fullPath"
    }
}

Write-Host "所有文件创建完成！"