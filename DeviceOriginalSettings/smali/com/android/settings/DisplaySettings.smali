.class public Lcom/flyme/DeviceOriginalSettings/DisplaySettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mCmHardwareManager:Landroid/hardware/CmHardwareManager;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWake:Landroid/preference/SwitchPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 577
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$4;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$4;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 99
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 112
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 121
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$2;-><init>(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 326
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 327
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 361
    :goto_1
    return-void

    .line 326
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 330
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 331
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 332
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 335
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 336
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 337
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 341
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 342
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 343
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 347
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 348
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 360
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 349
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 353
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 360
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const-string v0, "notification_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    :cond_1
    const-string v0, "battery_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    :cond_2
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    :cond_3
    return-void
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 239
    const v0, 0x1120023

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 230
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 226
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x200

    .line 562
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 563
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "cmhw"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 565
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    invoke-virtual {v0, v5}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    const-string v3, "double_tap_wake_gesture"

    invoke-virtual {v0, v5}, Landroid/hardware/CmHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 569
    .local v1, "enabled":Z
    invoke-virtual {v0, v5, v1}, Landroid/hardware/CmHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    const-string v3, "DisplaySettings"

    const-string v4, "Failed to restore tap-to-wake settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v1    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 572
    .restart local v1    # "enabled":Z
    :cond_1
    const-string v3, "DisplaySettings"

    const-string v4, "Tap-to-wake settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 246
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 294
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 258
    .local v3, "rotationEnabled":Z
    :cond_1
    if-nez v3, :cond_2

    .line 259
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0900b4

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 263
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v5, "summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "mode":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v4, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 272
    .local v0, "delim":Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 273
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 276
    const-string v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 279
    const-string v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 282
    const-string v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 285
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 287
    const-string v0, ", "

    .line 284
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_7
    const-string v0, " & "

    goto :goto_2

    .line 292
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0900b5

    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 422
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 423
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 426
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 429
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 433
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 435
    .local v1, "value":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 439
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 440
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 441
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 443
    .end local v1    # "value":I
    :cond_2
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_3
    move v2, v4

    .line 429
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_4
    move v2, v4

    .line 435
    goto :goto_1

    :cond_5
    move v3, v4

    .line 441
    goto :goto_2
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 297
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 299
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 301
    const-string v4, ""

    .line 319
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    return-void

    .line 303
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 304
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 305
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 306
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 308
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 309
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 310
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 311
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 312
    move v0, v2

    .line 309
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090646

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 134
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v8, "cmhw"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/CmHardwareManager;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    .line 136
    const v8, 0x7f06001f

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 138
    const-string v8, "display"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 140
    .local v1, "displayPrefs":Landroid/preference/PreferenceCategory;
    const-string v8, "interface"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 143
    .local v4, "interfacePrefs":Landroid/preference/PreferenceCategory;
    const-string v8, "display_rotation"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 144
    const-string v8, "accelerometer"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 145
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_0

    .line 146
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 149
    :cond_0
    const-string v8, "screensaver"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 150
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120068

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 153
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_1
    const-string v8, "screen_timeout"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 157
    const-string v8, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 159
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 162
    invoke-direct {p0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 163
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 165
    const-string v8, "font_size"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    .line 166
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    invoke-virtual {v8, p0}, Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    invoke-virtual {v8, p0}, Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 170
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 171
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    :cond_2
    :goto_0
    const-string v8, "lift_to_wake"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 180
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_8

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 181
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    :cond_3
    :goto_1
    const-string v8, "doze"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 190
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_9

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 191
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    :cond_4
    :goto_2
    const-string v8, "double_tap_wake_gesture"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    .line 199
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    const/16 v9, 0x200

    invoke-virtual {v8, v9}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 201
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    iput-object v12, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    .line 205
    :cond_5
    const-string v8, "proximity_on_wake"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 206
    .local v6, "proximityWake":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200b1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 208
    .local v5, "proximityCheckOnWake":Z
    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 209
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "proximity_on_wake"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    :cond_6
    const-string v8, "wake_when_plugged_or_unplugged"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    .line 216
    const-string v8, "lights"

    invoke-virtual {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 217
    return-void

    .line 173
    .end local v5    # "proximityCheckOnWake":Z
    .end local v6    # "proximityWake":Landroid/preference/Preference;
    :cond_7
    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2

    .line 174
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    iput-object v12, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    .line 183
    :cond_8
    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3

    .line 184
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    iput-object v12, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 193
    :cond_9
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_4

    .line 194
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 409
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090b97

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings$3;-><init>(Lcom/flyme/DeviceOriginalSettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 400
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 404
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 513
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "key":Ljava/lang/String;
    const-string v6, "screen_timeout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 516
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 517
    .local v5, "value":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_off_timeout"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    int-to-long v10, v5

    invoke-direct {p0, v10, v11}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v5    # "value":I
    :cond_0
    :goto_0
    const-string v6, "font_size"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 524
    invoke-virtual {p0, p2}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 526
    :cond_1
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_2

    move-object v6, p2

    .line 527
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 528
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness_mode"

    if-eqz v2, :cond_6

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    .end local v2    # "auto":Z
    :cond_2
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_3

    move-object v6, p2

    .line 532
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 533
    .local v5, "value":Z
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wake_gesture_enabled"

    if-eqz v5, :cond_7

    move v6, v7

    :goto_2
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    .end local v5    # "value":Z
    :cond_3
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_5

    .line 536
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 537
    .restart local v5    # "value":Z
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "doze_enabled"

    if-eqz v5, :cond_4

    move v8, v7

    :cond_4
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    .end local v5    # "value":Z
    :cond_5
    return v7

    .line 519
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 520
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v9, "could not persist screen timeout setting"

    invoke-static {v6, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_6
    move v6, v8

    .line 528
    goto :goto_1

    .end local v2    # "auto":Z
    .restart local v5    # "value":Z
    :cond_7
    move v6, v8

    .line 533
    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 544
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    if-ne p1, v1, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->showDialog(I)V

    .line 552
    :goto_0
    return v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mFontSizePref:Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;->click()V

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 496
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_0

    .line 497
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    const/16 v1, 0x200

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/CmHardwareManager;->set(IZ)Z

    move-result v1

    .line 508
    :goto_0
    return v1

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wake_when_plugged_or_unplugged"

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 504
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 508
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 504
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 365
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 366
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 368
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/hardware/CmHardwareManager;->get(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 375
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120025

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 386
    .local v1, "wakeUpWhenPluggedOrUnpluggedConfig":Z
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 387
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wake_when_plugged_or_unplugged"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateState()V

    .line 393
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    .line 394
    return-void

    :cond_2
    move v2, v4

    .line 387
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 474
    :try_start_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 481
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/flyme/DeviceOriginalSettings/FontDialogPreference;->getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "fontDesc":Ljava/lang/String;
    const v3, 0x7f090658

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    return-void

    .line 475
    .end local v1    # "fontDesc":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "DisplaySettings"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 488
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
