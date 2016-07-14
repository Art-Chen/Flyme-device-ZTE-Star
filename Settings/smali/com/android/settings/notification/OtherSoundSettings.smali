.class public Lcom/android/settings/notification/OtherSoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VOLUME_ADJUST_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerSounds:Landroid/preference/SwitchPreference;

.field private mPowerSoundsRingtone:Landroid/preference/Preference;

.field private mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 90
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 98
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 101
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 109
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$3;

    const-string v2, "volume_adjust_sounds"

    const-string v3, "volume_adjust_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VOLUME_ADJUST_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 118
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$4;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 132
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    .line 153
    new-instance v3, Lcom/android/settings/notification/OtherSoundSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    .line 177
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/OtherSoundSettings;->PREF_VOLUME_ADJUST_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 310
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/settings/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    .line 132
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 187
    new-instance v0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    .line 280
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/settings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/OtherSoundSettings;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/OtherSoundSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchNotificationSoundPicker(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "currentPowerRingtonePath"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TITLE"

    const v3, 0x7f09026d

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/OtherSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    if-eqz p2, :cond_0

    const-string v2, "silent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 344
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/OtherSoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method

.method private setPowerNotificationRingtone(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 356
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 358
    .local v0, "ringtone":Landroid/media/Ringtone;
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "toneName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    .local v2, "toneUriPath":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_notifications_ringtone"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    return-void

    .line 362
    .end local v1    # "toneName":Ljava/lang/String;
    .end local v2    # "toneUriPath":Ljava/lang/String;
    :cond_0
    const v4, 0x7f09026e

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/OtherSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    .restart local v1    # "toneName":Ljava/lang/String;
    const-string v2, "silent"

    .restart local v2    # "toneUriPath":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 373
    packed-switch p1, :pswitch_data_0

    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 375
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 376
    invoke-direct {p0, p3}, Lcom/android/settings/notification/OtherSoundSettings;->setPowerNotificationRingtone(Landroid/content/Intent;)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v7, 0x7f060030

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 200
    const-string v7, "power_notifications"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSounds:Landroid/preference/SwitchPreference;

    .line 201
    iget-object v10, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSounds:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "power_notifications_enabled"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    const-string v7, "power_notifications_vibrate"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    .line 204
    iget-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_notifications_vibrate"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    :goto_1
    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/OtherSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 207
    .local v6, "vibrator":Landroid/os/Vibrator;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_1

    .line 208
    :cond_0
    const-string v7, "power_notifications_vibrate"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/OtherSoundSettings;->removePreference(Ljava/lang/String;)V

    .line 211
    :cond_1
    const-string v7, "power_notifications_ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_notifications_ringtone"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "currentPowerRingtonePath":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 217
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_notifications_ringtone"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    :cond_2
    const-string v7, "silent"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 223
    iget-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    const v8, 0x7f09026e

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/OtherSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings/notification/SettingPref;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 234
    .local v4, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v4, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .end local v1    # "currentPowerRingtonePath":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pref":Lcom/android/settings/notification/SettingPref;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    move v7, v9

    .line 201
    goto :goto_0

    :cond_5
    move v8, v9

    .line 204
    goto :goto_1

    .line 226
    .restart local v1    # "currentPowerRingtonePath":Ljava/lang/String;
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 228
    .local v5, "ringtone":Landroid/media/Ringtone;
    if-eqz v5, :cond_3

    .line 229
    iget-object v7, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 236
    .end local v5    # "ringtone":Landroid/media/Ringtone;
    .restart local v0    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_7
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 248
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSounds:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_notifications_enabled"

    iget-object v4, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSounds:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    :goto_0
    return v1

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_notifications_vibrate"

    iget-object v4, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_notifications_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/OtherSoundSettings;->launchNotificationSoundPicker(ILjava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 242
    return-void
.end method
