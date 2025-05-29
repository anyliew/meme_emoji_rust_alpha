# 设置根目录路径
$rootDir = "D:\meme\meme_emoji_rust_alpha\resources\images"

# 获取所有需要处理的文件夹列表
$folders = @(
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

# 处理每个文件夹
foreach ($folder in $folders) {
    $currentDir = Join-Path -Path $rootDir -ChildPath $folder
    $imagesDir = Join-Path -Path $currentDir -ChildPath "images"
    
    # 检查images文件夹是否存在
    if (Test-Path -Path $imagesDir -PathType Container) {
        Write-Host "正在处理文件夹: $currentDir"
        
        # 获取images文件夹中的所有文件
        $files = Get-ChildItem -Path $imagesDir -File
        
        if ($files.Count -gt 0) {
            # 移动文件到上一级目录
            foreach ($file in $files) {
                $destination = Join-Path -Path $currentDir -ChildPath $file.Name
                Move-Item -Path $file.FullName -Destination $destination -Force
                Write-Host "已移动文件: $($file.Name)"
            }
            
            # 删除空的images文件夹
            Remove-Item -Path $imagesDir -Force
            Write-Host "已删除空文件夹: images"
        } else {
            Write-Host "文件夹 $imagesDir 为空，直接删除"
            Remove-Item -Path $imagesDir -Force
        }
    } else {
        Write-Host "文件夹 $imagesDir 不存在，跳过"
    }
}

Write-Host "所有文件夹处理完成！"