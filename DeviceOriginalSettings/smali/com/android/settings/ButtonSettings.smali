.class public Lcom/flyme/DeviceOriginalSettings/ButtonSettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mDisableNavigationKeys:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

.field private mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

.field private mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

.field private mPowerEndCall:Landroid/preference/SwitchPreference;

.field private mSwapVolumeButtons:Landroid/preference/SwitchPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;

.field private mVolumeMusicControls:Landroid/preference/SwitchPreference;

.field private mVolumeWakeScreen:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 734
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings$2;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings$2;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/ButtonSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/ButtonSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/ButtonSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/ButtonSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPreferencesToRemove(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferencesToRemove(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;
    .locals 33
    .param p0, "settings"    # Lcom/flyme/DeviceOriginalSettings/ButtonSettings;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/DeviceOriginalSettings/ButtonSettings;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v23, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 220
    .local v22, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 222
    .local v21, "res":Landroid/content/res/Resources;
    const v31, 0x10e0053

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 224
    .local v6, "deviceKeys":I
    const v31, 0x10e0054

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 227
    .local v7, "deviceWakeKeys":I
    const/16 v31, 0x1a

    invoke-static/range {v31 .. v31}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v17

    .line 228
    .local v17, "hasPowerKey":Z
    and-int/lit8 v31, v6, 0x1

    if-eqz v31, :cond_17

    const/4 v14, 0x1

    .line 229
    .local v14, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v31, v6, 0x2

    if-eqz v31, :cond_18

    const/4 v13, 0x1

    .line 230
    .local v13, "hasBackKey":Z
    :goto_1
    and-int/lit8 v31, v6, 0x4

    if-eqz v31, :cond_19

    const/4 v15, 0x1

    .line 231
    .local v15, "hasMenuKey":Z
    :goto_2
    and-int/lit8 v31, v6, 0x8

    if-eqz v31, :cond_1a

    const/4 v12, 0x1

    .line 232
    .local v12, "hasAssistKey":Z
    :goto_3
    and-int/lit8 v31, v6, 0x10

    if-eqz v31, :cond_1b

    const/4 v11, 0x1

    .line 234
    .local v11, "hasAppSwitchKey":Z
    :goto_4
    and-int/lit8 v31, v7, 0x1

    if-eqz v31, :cond_1c

    const/16 v27, 0x1

    .line 235
    .local v27, "showHomeWake":Z
    :goto_5
    and-int/lit8 v31, v7, 0x2

    if-eqz v31, :cond_1d

    const/16 v26, 0x1

    .line 236
    .local v26, "showBackWake":Z
    :goto_6
    and-int/lit8 v31, v7, 0x4

    if-eqz v31, :cond_1e

    const/16 v28, 0x1

    .line 237
    .local v28, "showMenuWake":Z
    :goto_7
    and-int/lit8 v31, v7, 0x8

    if-eqz v31, :cond_1f

    const/16 v25, 0x1

    .line 238
    .local v25, "showAssistWake":Z
    :goto_8
    and-int/lit8 v31, v7, 0x10

    if-eqz v31, :cond_20

    const/16 v24, 0x1

    .line 239
    .local v24, "showAppSwitchWake":Z
    :goto_9
    and-int/lit8 v31, v7, 0x40

    if-eqz v31, :cond_21

    const/16 v29, 0x1

    .line 241
    .local v29, "showVolumeWake":Z
    :goto_a
    const-string v31, "cmhw"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/CmHardwareManager;

    .line 246
    .local v3, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    const/16 v19, 0x0

    .line 247
    .local v19, "needsNavigationBar":Z
    const/16 v31, 0x20

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v31

    if-eqz v31, :cond_23

    .line 249
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v30

    .line 250
    .local v30, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v30 .. v30}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    .line 254
    .end local v30    # "wm":Landroid/view/IWindowManager;
    :goto_b
    if-eqz v19, :cond_22

    .line 255
    const-string v31, "disable_nav_keys"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    :goto_c
    if-eqz v17, :cond_24

    .line 271
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 272
    const-string v31, "power_end_call"

    const-string v32, "power_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    if-eqz p0, :cond_1

    .line 274
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 281
    :cond_1
    :goto_d
    if-eqz v14, :cond_25

    .line 282
    if-nez v27, :cond_2

    .line 283
    const-string v31, "home_wake_screen"

    const-string v32, "home_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 287
    if-eqz p0, :cond_3

    .line 288
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 290
    :cond_3
    const-string v31, "home_answer_call"

    const-string v32, "home_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_4
    const v31, 0x10e0050

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 295
    .local v5, "defaultLongPressAction":I
    if-ltz v5, :cond_5

    const/16 v31, 0x8

    move/from16 v0, v31

    if-le v5, v0, :cond_6

    .line 297
    :cond_5
    const/4 v5, 0x0

    .line 300
    :cond_6
    const v31, 0x10e0051

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 302
    .local v4, "defaultDoubleTapAction":I
    if-ltz v4, :cond_7

    const/16 v31, 0x8

    move/from16 v0, v31

    if-le v4, v0, :cond_8

    .line 304
    :cond_7
    const/4 v4, 0x0

    .line 307
    :cond_8
    if-eqz p0, :cond_9

    .line 308
    const-string v31, "key_home_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 311
    .local v18, "longPressAction":I
    const-string v31, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 314
    const-string v31, "key_home_double_tap_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 317
    .local v8, "doubleTapAction":I
    const-string v31, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v8}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 325
    .end local v4    # "defaultDoubleTapAction":I
    .end local v5    # "defaultLongPressAction":I
    .end local v8    # "doubleTapAction":I
    .end local v18    # "longPressAction":I
    :cond_9
    :goto_e
    if-eqz v13, :cond_26

    .line 326
    if-nez v26, :cond_a

    .line 327
    const-string v31, "back_wake_screen"

    const-string v32, "back_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v31, "back_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_a
    :goto_f
    if-eqz v15, :cond_28

    .line 335
    if-nez v28, :cond_b

    .line 336
    const-string v31, "menu_wake_screen"

    const-string v32, "menu_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_b
    if-eqz p0, :cond_c

    .line 340
    const-string v31, "key_menu_action"

    const/16 v32, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 342
    .local v20, "pressAction":I
    const-string v31, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 345
    const-string v32, "key_menu_long_press_action"

    if-eqz v12, :cond_27

    const/16 v31, 0x0

    :goto_10
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 348
    .restart local v18    # "longPressAction":I
    const-string v31, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 355
    .end local v18    # "longPressAction":I
    .end local v20    # "pressAction":I
    :cond_c
    :goto_11
    if-eqz v12, :cond_29

    .line 356
    if-nez v25, :cond_d

    .line 357
    const-string v31, "assist_wake_screen"

    const-string v32, "assist_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_d
    if-eqz p0, :cond_e

    .line 361
    const-string v31, "key_assist_action"

    const/16 v32, 0x3

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 363
    .restart local v20    # "pressAction":I
    const-string v31, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 366
    const-string v31, "key_assist_long_press_action"

    const/16 v32, 0x4

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 368
    .restart local v18    # "longPressAction":I
    const-string v31, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 375
    .end local v18    # "longPressAction":I
    .end local v20    # "pressAction":I
    :cond_e
    :goto_12
    if-eqz v11, :cond_2a

    .line 376
    if-nez v24, :cond_f

    .line 377
    const-string v31, "app_switch_wake_screen"

    const-string v32, "app_switch_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_f
    if-eqz p0, :cond_10

    .line 381
    const-string v31, "key_app_switch_action"

    const/16 v32, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 383
    .restart local v20    # "pressAction":I
    const-string v31, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 386
    const-string v31, "key_app_switch_long_press_action"

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 388
    .restart local v18    # "longPressAction":I
    const-string v31, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 395
    .end local v18    # "longPressAction":I
    .end local v20    # "pressAction":I
    :cond_10
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_2b

    .line 396
    if-nez v29, :cond_11

    .line 397
    const-string v31, "volume_wake_screen"

    const-string v32, "volume_keys"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_11
    :goto_14
    :try_start_1
    const-string v31, "dev_force_show_navbar"

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2c

    const/4 v10, 0x1

    .line 408
    .local v10, "forceNavbar":Z
    :goto_15
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v31

    if-nez v31, :cond_12

    if-eqz v10, :cond_2d

    :cond_12
    const/16 v16, 0x1

    .line 411
    .local v16, "hasNavBar":Z
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/cm/ScreenType;->isPhone(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 412
    const-string v31, "navigation_bar_left"

    const-string v32, "navigation_bar_category"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_13
    if-nez v16, :cond_15

    if-nez v19, :cond_14

    const/16 v31, 0x20

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v31

    if-nez v31, :cond_15

    .line 417
    :cond_14
    const-string v31, "navigation_bar_category"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    .end local v10    # "forceNavbar":Z
    .end local v16    # "hasNavBar":Z
    :cond_15
    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_16

    .line 425
    const-string v31, "button_backlight"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_16
    return-object v23

    .line 228
    .end local v3    # "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    .end local v11    # "hasAppSwitchKey":Z
    .end local v12    # "hasAssistKey":Z
    .end local v13    # "hasBackKey":Z
    .end local v14    # "hasHomeKey":Z
    .end local v15    # "hasMenuKey":Z
    .end local v19    # "needsNavigationBar":Z
    .end local v24    # "showAppSwitchWake":Z
    .end local v25    # "showAssistWake":Z
    .end local v26    # "showBackWake":Z
    .end local v27    # "showHomeWake":Z
    .end local v28    # "showMenuWake":Z
    .end local v29    # "showVolumeWake":Z
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 229
    .restart local v14    # "hasHomeKey":Z
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 230
    .restart local v13    # "hasBackKey":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 231
    .restart local v15    # "hasMenuKey":Z
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 232
    .restart local v12    # "hasAssistKey":Z
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 234
    .restart local v11    # "hasAppSwitchKey":Z
    :cond_1c
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 235
    .restart local v27    # "showHomeWake":Z
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 236
    .restart local v26    # "showBackWake":Z
    :cond_1e
    const/16 v28, 0x0

    goto/16 :goto_7

    .line 237
    .restart local v28    # "showMenuWake":Z
    :cond_1f
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 238
    .restart local v25    # "showAssistWake":Z
    :cond_20
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 239
    .restart local v24    # "showAppSwitchWake":Z
    :cond_21
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 258
    .restart local v3    # "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    .restart local v19    # "needsNavigationBar":Z
    .restart local v29    # "showVolumeWake":Z
    :cond_22
    if-eqz p0, :cond_0

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    goto/16 :goto_c

    .line 267
    :cond_23
    const-string v31, "disable_nav_keys"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 278
    :cond_24
    const-string v31, "power_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 322
    :cond_25
    const-string v31, "home_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 331
    :cond_26
    const-string v31, "back_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 345
    .restart local v20    # "pressAction":I
    :cond_27
    const/16 v31, 0x3

    goto/16 :goto_10

    .line 352
    .end local v20    # "pressAction":I
    :cond_28
    const-string v31, "menu_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 372
    :cond_29
    const-string v31, "assist_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 392
    :cond_2a
    const-string v31, "app_switch_key"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 400
    :cond_2b
    const-string v31, "volume_keys"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 406
    :cond_2c
    const/4 v10, 0x0

    goto/16 :goto_15

    .line 408
    .restart local v10    # "forceNavbar":Z
    :cond_2d
    const/16 v16, 0x0

    goto/16 :goto_16

    .line 419
    .end local v10    # "forceNavbar":Z
    :catch_0
    move-exception v9

    .line 420
    .local v9, "e":Landroid/os/RemoteException;
    const-string v31, "SystemSettings"

    const-string v32, "Error getting navigation bar status"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 251
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v31

    goto/16 :goto_b
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    .line 532
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 534
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ring_home_button_behavior"

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    return-void

    .line 721
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 459
    .local v0, "list":Landroid/preference/ListPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 463
    .end local v0    # "list":Landroid/preference/ListPreference;
    :goto_0
    return-object v0

    .line 460
    .restart local v0    # "list":Landroid/preference/ListPreference;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 468
    .local v9, "list":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "recents_long_press_activity"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "componentString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 474
    .local v12, "targetComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 475
    const v14, 0x7f090062

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 483
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.RECENTS_LONG_PRESS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 486
    .local v11, "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 488
    const v14, 0x7f090062

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "recents_long_press_activity"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 491
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 528
    :goto_1
    return-object v9

    .line 477
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_0

    .line 495
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    .line 496
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v13, v14, [Ljava/lang/CharSequence;

    .line 498
    .local v13, "values":[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    const v15, 0x7f090062

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 499
    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    .line 500
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 501
    const/4 v5, 0x1

    .line 502
    .local v5, "i":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 506
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_3
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v4, "entryComponent":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 517
    if-eqz v12, :cond_2

    .line 518
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 520
    aget-object v14, v3, v5

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 524
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 525
    goto :goto_2

    .line 507
    .end local v4    # "entryComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "SystemSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error package not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v14, v3, v5

    goto :goto_3

    .line 526
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v9, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v9, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 677
    const-string v2, "cmhw"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 679
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_force_show_navbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateDisableNavkeysCategories(Z)V
    .locals 10
    .param p1, "navbarEnabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 638
    .local v6, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v7, "home_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 640
    .local v4, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "back_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 642
    .local v2, "backCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "menu_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 644
    .local v5, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "assist_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 646
    .local v1, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "app_switch_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 648
    .local v0, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "button_backlight"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;

    .line 653
    .local v3, "backlight":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v3, :cond_0

    .line 654
    if-nez p1, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 655
    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 659
    :cond_0
    if-eqz v4, :cond_1

    .line 660
    if-nez p1, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 662
    :cond_1
    if-eqz v2, :cond_2

    .line 663
    if-nez p1, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 665
    :cond_2
    if-eqz v5, :cond_3

    .line 666
    if-nez p1, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 668
    :cond_3
    if-eqz v1, :cond_4

    .line 669
    if-nez p1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 671
    :cond_4
    if-eqz v0, :cond_5

    .line 672
    if-nez p1, :cond_b

    :goto_5
    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 674
    :cond_5
    return-void

    :cond_6
    move v7, v9

    .line 654
    goto :goto_0

    :cond_7
    move v7, v9

    .line 660
    goto :goto_1

    :cond_8
    move v7, v9

    .line 663
    goto :goto_2

    :cond_9
    move v7, v9

    .line 666
    goto :goto_3

    :cond_a
    move v7, v9

    .line 669
    goto :goto_4

    :cond_b
    move v8, v9

    .line 672
    goto :goto_5
.end method

.method private updateDisableNavkeysOption()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dev_force_show_navbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 631
    .local v0, "enabled":Z
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 632
    return-void
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 595
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 596
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10e005b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 599
    .local v2, "defaultBrightness":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dev_force_show_navbar"

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v6, "cmhw"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 603
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    const/16 v6, 0x20

    invoke-virtual {v0, v6, p1}, Landroid/hardware/CmHardwareManager;->set(IZ)Z

    .line 606
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 608
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "button_brightness"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 611
    .local v1, "currentBrightness":I
    const-string v6, "pre_navbar_button_backlight"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 612
    const-string v6, "pre_navbar_button_backlight"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "button_brightness"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    .end local v1    # "currentBrightness":I
    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 625
    return-void

    .end local v0    # "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v6, v7

    .line 599
    goto :goto_0

    .line 617
    .restart local v0    # "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v6, "pre_navbar_button_backlight"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 618
    .local v4, "oldBright":I
    if-eq v4, v10, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "button_brightness"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 621
    const-string v6, "pre_navbar_button_backlight"

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v9, 0x7f060011

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->addPreferencesFromResource(I)V

    .line 143
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 146
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v9, "power_end_call"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 149
    const-string v9, "home_answer_call"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 151
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 154
    const-string v9, "disable_nav_keys"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    .line 156
    const-string v9, "navigation_bar_category"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    .line 159
    const-string v9, "navigation_bar_left"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    .line 162
    const-string v9, "navigation_recents_long_press"

    invoke-direct {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    .line 165
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getPreferencesToRemove(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 167
    .local v7, "prefsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 170
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 174
    .local v6, "preferenceCategory":Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_0

    .line 176
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 180
    .end local v6    # "preferenceCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "category":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/flyme/DeviceOriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "volume_key_cursor_control"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, "cursorControlAction":I
    const-string v9, "volume_key_cursor_control"

    invoke-direct {p0, v9, v1}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 190
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "swap_volume_keys_on_rotation"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 192
    .local v8, "swapVolumeKeys":I
    const-string v9, "swap_volume_buttons"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    .line 194
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_3

    .line 195
    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-lez v8, :cond_6

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    .end local v1    # "cursorControlAction":I
    .end local v8    # "swapVolumeKeys":I
    :cond_3
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_4

    .line 201
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_4
    const-string v9, "volume_wake_screen"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    .line 205
    const-string v9, "volbtn_music_controls"

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    .line 207
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_5

    .line 208
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_5

    .line 209
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    const-string v11, "volume_wake_screen"

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 210
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 213
    :cond_5
    return-void

    .restart local v1    # "cursorControlAction":I
    .restart local v8    # "swapVolumeKeys":I
    :cond_6
    move v9, v11

    .line 195
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 540
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 541
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_home_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    :goto_0
    return v3

    .line 544
    :cond_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 545
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v5, "key_home_double_tap_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 549
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_menu_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    .line 553
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_menu_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4

    .line 557
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_assist_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_5

    .line 561
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_assist_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 565
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_app_switch_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_6
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_7

    .line 569
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_app_switch_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_7
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_8

    .line 573
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    const-string v5, "volume_key_cursor_control"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_8
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_a

    move-object v1, p2

    .line 579
    check-cast v1, Ljava/lang/String;

    .line 580
    .local v1, "putString":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 581
    .local v0, "index":I
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v0

    .line 583
    .local v2, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 585
    const/4 v1, 0x0

    .line 587
    :cond_9
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "recents_long_press_activity"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 591
    .end local v0    # "index":I
    .end local v1    # "putString":Ljava/lang/String;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 690
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 691
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 693
    .local v0, "value":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swap_volume_keys_on_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 717
    .end local v0    # "value":I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    move v0, v1

    .line 691
    goto :goto_0

    .line 695
    :cond_3
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_4

    .line 696
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 697
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 698
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 699
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 700
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    .line 701
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/ButtonSettings$1;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/ButtonSettings;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 709
    :cond_4
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_5

    .line 710
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_2

    .line 712
    :cond_5
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    .line 713
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 433
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 436
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "incall_power_button_behavior"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 440
    .local v2, "incallPowerBehavior":I
    if-ne v2, v8, :cond_2

    move v3, v4

    .line 442
    .local v3, "powerButtonEndsCall":Z
    :goto_0
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 446
    .end local v2    # "incallPowerBehavior":I
    .end local v3    # "powerButtonEndsCall":Z
    :cond_0
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ring_home_button_behavior"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 450
    .local v1, "incallHomeBehavior":I
    if-ne v1, v8, :cond_3

    move v0, v4

    .line 452
    .local v0, "homeButtonAnswersCall":Z
    :goto_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 455
    .end local v0    # "homeButtonAnswersCall":Z
    .end local v1    # "incallHomeBehavior":I
    :cond_1
    return-void

    .restart local v2    # "incallPowerBehavior":I
    :cond_2
    move v3, v5

    .line 440
    goto :goto_0

    .end local v2    # "incallPowerBehavior":I
    .restart local v1    # "incallHomeBehavior":I
    :cond_3
    move v0, v5

    .line 450
    goto :goto_1
.end method
