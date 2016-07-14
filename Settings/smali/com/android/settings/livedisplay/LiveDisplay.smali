.class public Lcom/android/settings/livedisplay/LiveDisplay;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LiveDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCmHardwareManager:Landroid/hardware/CmHardwareManager;

.field private mColorEnhancement:Landroid/preference/SwitchPreference;

.field private mDefaultDayTemperature:I

.field private mDefaultNightTemperature:I

.field private mDisplayTemperature:Lcom/android/settings/livedisplay/DisplayTemperature;

.field private final mHandler:Landroid/os/Handler;

.field private mLiveDisplay:Landroid/preference/ListPreference;

.field private mLowPower:Landroid/preference/SwitchPreference;

.field private mModeEntries:[Ljava/lang/String;

.field private mModeSummaries:[Ljava/lang/String;

.field private mModeValues:[Ljava/lang/String;

.field private final mObserver:Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mScreenColorSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/android/settings/livedisplay/LiveDisplay$1;

    invoke-direct {v0}, Lcom/android/settings/livedisplay/LiveDisplay$1;-><init>()V

    sput-object v0, Lcom/android/settings/livedisplay/LiveDisplay;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;-><init>(Lcom/android/settings/livedisplay/LiveDisplay;)V

    iput-object v0, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mObserver:Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/livedisplay/LiveDisplay;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/livedisplay/LiveDisplay;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/livedisplay/LiveDisplay;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/livedisplay/LiveDisplay;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/livedisplay/LiveDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/livedisplay/LiveDisplay;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->updateModeSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/livedisplay/LiveDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/livedisplay/LiveDisplay;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isPostProcessingSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    const-string v0, "com.qualcomm.display"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateModeSummary()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "display_temperature_mode"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 222
    .local v1, "mode":I
    iget-object v2, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 223
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/settings/livedisplay/DisplayTemperature;

    if-eqz v2, :cond_0

    .line 226
    iget-object v5, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/settings/livedisplay/DisplayTemperature;

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/livedisplay/DisplayTemperature;->setEnabled(Z)V

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 231
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 226
    goto :goto_0

    :cond_3
    move v3, v4

    .line 229
    goto :goto_1
.end method

.method private updateTemperatureSummary()V
    .locals 8

    .prologue
    const/4 v5, -0x2

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_day"

    iget v4, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mDefaultDayTemperature:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 238
    .local v0, "day":I
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_temperature_night"

    iget v4, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mDefaultNightTemperature:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 243
    .local v1, "night":I
    iget-object v2, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/settings/livedisplay/DisplayTemperature;

    invoke-virtual {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090312

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/livedisplay/DisplayTemperature;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 103
    .local v3, "activity":Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 104
    .local v14, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 106
    .local v13, "res":Landroid/content/res/Resources;
    const v17, 0x10e0087

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mDefaultDayTemperature:I

    .line 108
    const v17, 0x10e0088

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mDefaultNightTemperature:I

    .line 111
    const-string v17, "cmhw"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/CmHardwareManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    .line 113
    const v17, 0x7f060028

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->addPreferencesFromResource(I)V

    .line 115
    const-string v17, "live_display_options"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 117
    .local v12, "liveDisplayPrefs":Landroid/preference/PreferenceCategory;
    const-string v17, "calibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 120
    .local v4, "calibrationPrefs":Landroid/preference/PreferenceCategory;
    const-string v17, "display_temperature_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 123
    .local v6, "displayMode":I
    const-string v17, "live_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 126
    const v17, 0x1070011

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 128
    const v17, 0x1070013

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 130
    const v17, 0x1070012

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    move-object/from16 v17, v0

    const/16 v18, 0x100

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v17

    if-nez v17, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    .line 136
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    .line 137
    .local v7, "entriesTemp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 138
    .local v16, "valuesTemp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 139
    .local v15, "summariesTemp":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 140
    .local v11, "j":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 141
    if-ne v9, v10, :cond_0

    .line 140
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 144
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    aput-object v17, v7, v11

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    aput-object v17, v16, v11

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    aput-object v17, v15, v11

    .line 147
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    .line 150
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    .line 151
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeSummaries:[Ljava/lang/String;

    .line 154
    .end local v7    # "entriesTemp":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "idx":I
    .end local v11    # "j":I
    .end local v15    # "summariesTemp":[Ljava/lang/String;
    .end local v16    # "valuesTemp":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeEntries:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mModeValues:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string v17, "live_display_color_temperature"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/livedisplay/DisplayTemperature;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mDisplayTemperature:Lcom/android/settings/livedisplay/DisplayTemperature;

    .line 160
    const-string v17, "live_display_low_power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 161
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v17

    if-nez v17, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mLowPower:Landroid/preference/SwitchPreference;

    .line 167
    :cond_3
    const-string v17, "live_display_auto_outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 168
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    move-object/from16 v17, v0

    const/16 v18, 0x100

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 174
    :cond_4
    const-string v17, "live_display_color_enhance"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 175
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mColorEnhancement:Landroid/preference/SwitchPreference;

    .line 181
    :cond_5
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mCmHardwareManager:Landroid/hardware/CmHardwareManager;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v17

    if-nez v17, :cond_6

    .line 183
    const-string v17, "gamma_tuning"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 184
    .local v8, "gammaPref":Landroid/preference/Preference;
    if-eqz v8, :cond_6

    .line 185
    invoke-virtual {v4, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    .end local v8    # "gammaPref":Landroid/preference/Preference;
    :cond_6
    const-string v17, "screencolor_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    .line 190
    if-eqz v4, :cond_7

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/livedisplay/LiveDisplay;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_7
    :goto_2
    return-void

    .line 193
    :cond_8
    const-string v17, "user"

    sget-object v18, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 195
    const-string v17, "color_calibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 196
    .local v5, "displayColor":Landroid/preference/Preference;
    if-eqz v5, :cond_7

    .line 197
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mObserver:Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 215
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mLiveDisplay:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_temperature_mode"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 254
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->updateModeSummary()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/livedisplay/LiveDisplay;->updateTemperatureSummary()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/livedisplay/LiveDisplay;->mObserver:Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/livedisplay/LiveDisplay$SettingsObserver;->register(Z)V

    .line 209
    return-void
.end method
