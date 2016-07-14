.class public Lcom/android/settings/cyanogenmod/qs/QSTileHolder;
.super Ljava/lang/Object;
.source "QSTileHolder.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final resourceName:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;->resourceName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;->value:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static from(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/cyanogenmod/qs/QSTileHolder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tileType"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "resourceName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 48
    .local v2, "stringId":I
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v3, "lte"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDdsSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 152
    :goto_2
    :pswitch_0
    if-eq v2, v4, :cond_4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "name":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;

    invoke-direct {v3, v1, p1, v0}, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 65
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "bt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "inversion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "cell"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "airplane"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "rotation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "flashlight"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "location"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "cast"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "hotspot"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "adb_network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "lte"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "profiles"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "performance"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "nfc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "compass"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "lockscreen"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "visualizer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "screen_timeout"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "live_display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x14

    goto/16 :goto_1

    .line 69
    :pswitch_1
    const-string v1, "ic_qs_wifi_full_4"

    .line 70
    const v2, 0x7f0902a8

    .line 71
    goto/16 :goto_2

    .line 73
    :pswitch_2
    const-string v1, "ic_qs_bluetooth_on"

    .line 74
    const v2, 0x7f0902a9

    .line 75
    goto/16 :goto_2

    .line 77
    :pswitch_3
    const-string v1, "ic_invert_colors_disable"

    .line 78
    const v2, 0x7f0902aa

    .line 79
    goto/16 :goto_2

    .line 81
    :pswitch_4
    const-string v1, "ic_qs_signal_full_4"

    .line 82
    const v2, 0x7f0902ab

    .line 83
    goto/16 :goto_2

    .line 85
    :pswitch_5
    const-string v1, "ic_signal_airplane_disable"

    .line 86
    const v2, 0x7f0902ac

    .line 87
    goto/16 :goto_2

    .line 89
    :pswitch_6
    const-string v1, "ic_portrait_to_auto_rotate"

    .line 90
    const v2, 0x7f0902ad

    .line 91
    goto/16 :goto_2

    .line 93
    :pswitch_7
    const-string v1, "ic_signal_flashlight_disable"

    .line 94
    const v2, 0x7f0902ae

    .line 95
    goto/16 :goto_2

    .line 97
    :pswitch_8
    const-string v1, "ic_qs_location_on"

    .line 98
    const v2, 0x7f0902af

    .line 99
    goto/16 :goto_2

    .line 101
    :pswitch_9
    const-string v1, "ic_qs_cast_on"

    .line 102
    const v2, 0x7f0902b0

    .line 103
    goto/16 :goto_2

    .line 105
    :pswitch_a
    const-string v1, "ic_hotspot_disable"

    .line 106
    const v2, 0x7f0902b1

    .line 107
    goto/16 :goto_2

    .line 109
    :pswitch_b
    const-string v1, "ic_qs_network_adb_on"

    .line 110
    const v2, 0x7f0902b2

    .line 111
    goto/16 :goto_2

    .line 113
    :pswitch_c
    const-string v1, "ic_qs_lte_on"

    .line 114
    const v2, 0x7f0902b8

    .line 115
    goto/16 :goto_2

    .line 117
    :pswitch_d
    const-string v1, "ic_qs_system_profiles"

    .line 118
    const v2, 0x7f0902b3

    .line 119
    goto/16 :goto_2

    .line 121
    :pswitch_e
    const-string v1, "ic_qs_perf_profile_highperf_avd"

    .line 122
    const v2, 0x7f0902b4

    .line 123
    goto/16 :goto_2

    .line 125
    :pswitch_f
    const-string v1, "ic_qs_nfc_on"

    .line 126
    const v2, 0x7f0902b5

    .line 127
    goto/16 :goto_2

    .line 129
    :pswitch_10
    const-string v1, "ic_qs_compass_on"

    .line 130
    const v2, 0x7f0902b6

    .line 131
    goto/16 :goto_2

    .line 133
    :pswitch_11
    const-string v1, "ic_qs_lock_screen_on"

    .line 134
    const v2, 0x7f0902b7

    .line 135
    goto/16 :goto_2

    .line 137
    :pswitch_12
    const-string v1, "ic_qs_visualizer_static"

    .line 138
    const v2, 0x7f0902b9

    .line 139
    goto/16 :goto_2

    .line 141
    :pswitch_13
    const-string v1, "ic_qs_screen_timeout_vector"

    .line 142
    const v2, 0x7f0902ba

    .line 143
    goto/16 :goto_2

    .line 145
    :pswitch_14
    const-string v1, "ic_livedisplay_day"

    .line 146
    const v2, 0x7f09030e

    .line 147
    goto/16 :goto_2

    .line 65
    :sswitch_data_0
    .sparse-switch
        -0x783813ed -> :sswitch_3
        -0x6c049572 -> :sswitch_b
        -0x583cefd0 -> :sswitch_e
        -0x468444da -> :sswitch_7
        -0x3bbd5416 -> :sswitch_d
        -0x285a60ae -> :sswitch_5
        -0x130a8722 -> :sswitch_12
        -0x266f082 -> :sswitch_6
        0x0 -> :sswitch_0
        0xc52 -> :sswitch_2
        0x1a3dd -> :sswitch_c
        0x1a9ab -> :sswitch_f
        0x2e7b3f -> :sswitch_9
        0x2e8962 -> :sswitch_4
        0x37af15 -> :sswitch_1
        0x3343888e -> :sswitch_13
        0x38a73d12 -> :sswitch_10
        0x418a9ecf -> :sswitch_a
        0x59cdc46f -> :sswitch_14
        0x6adcb957 -> :sswitch_11
        0x714f9fb5 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
