.class public Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "PowerMenuActions.java"


# instance fields
.field private mAirplanePref:Landroid/preference/CheckBoxPreference;

.field private mAllActions:[Ljava/lang/String;

.field private mAvailableActions:[Ljava/lang/String;

.field private mBugReportPref:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mLocalUserConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockdownPref:Landroid/preference/CheckBoxPreference;

.field private mProfilePref:Landroid/preference/CheckBoxPreference;

.field private mRebootPref:Landroid/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/preference/CheckBoxPreference;

.field private mSettingsPref:Landroid/preference/CheckBoxPreference;

.field private mSilentPref:Landroid/preference/CheckBoxPreference;

.field private mUsersPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    return-void
.end method

.method private getUserConfig()V
    .locals 9

    .prologue
    .line 257
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_menu_actions"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "savedActions":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 263
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "defaultActions":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 266
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "defaultActions":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 270
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAvailableActions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveUserConfig()V
    .locals 11

    .prologue
    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v5, "s":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v6, "setactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 281
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->isActionAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 289
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_2

    .line 291
    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_menu_actions"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 297
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updatePowerMenuDialog()V

    .line 298
    return-void
.end method

.method private settingsArrayContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updatePowerMenuDialog()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "u":Landroid/content/Intent;
    const-string v1, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 304
    return-void
.end method

.method private updatePreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 234
    .local v0, "bugreport":Z
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system_profiles_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 237
    .local v1, "profiles":Z
    :goto_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    if-eqz v1, :cond_4

    .line 240
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 248
    if-eqz v0, :cond_5

    .line 249
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    :goto_3
    return-void

    .end local v0    # "bugreport":Z
    .end local v1    # "profiles":Z
    :cond_2
    move v0, v3

    .line 232
    goto :goto_0

    .restart local v0    # "bugreport":Z
    :cond_3
    move v1, v3

    .line 234
    goto :goto_1

    .line 242
    .restart local v1    # "profiles":Z
    :cond_4
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3
.end method

.method private updateUserConfig(ZLjava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p1, :cond_1

    .line 220
    invoke-direct {p0, p2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->saveUserConfig()V

    .line 229
    return-void

    .line 224
    :cond_1
    invoke-direct {p0, p2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v4, 0x7f060032

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAvailableActions:[Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/android/internal/util/cm/PowerMenuConstants;->getAllActions()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_a

    aget-object v0, v1, v2

    .line 75
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->isActionAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const-string v4, "reboot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const-string v4, "reboot"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 82
    :cond_2
    const-string v4, "screenshot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    const-string v4, "screenshot"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 84
    :cond_3
    const-string v4, "profile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    const-string v4, "profile"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 86
    :cond_4
    const-string v4, "airplane"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    const-string v4, "airplane"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 88
    :cond_5
    const-string v4, "users"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 89
    const-string v4, "users"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 90
    :cond_6
    const-string v4, "settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 91
    const-string v4, "settings"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 92
    :cond_7
    const-string v4, "lockdown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 93
    const-string v4, "lockdown"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 94
    :cond_8
    const-string v4, "bugreport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 95
    const-string v4, "bugreport"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 96
    :cond_9
    const-string v4, "silent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string v4, "silent"

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 101
    .end local v0    # "action":Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getUserConfig()V

    .line 102
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 167
    .local v0, "value":Z
    const-string v1, "reboot"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    .line 204
    :goto_0
    const/4 v1, 0x1

    .end local v0    # "value":Z
    :goto_1
    return v1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 171
    .restart local v0    # "value":Z
    const-string v1, "screenshot"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0    # "value":Z
    :cond_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 175
    .restart local v0    # "value":Z
    const-string v1, "profile"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0    # "value":Z
    :cond_2
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 179
    .restart local v0    # "value":Z
    const-string v1, "airplane"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v0    # "value":Z
    :cond_3
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 183
    .restart local v0    # "value":Z
    const-string v1, "users"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v0    # "value":Z
    :cond_4
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 186
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 187
    .restart local v0    # "value":Z
    const-string v1, "settings"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v0    # "value":Z
    :cond_5
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 190
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 191
    .restart local v0    # "value":Z
    const-string v1, "lockdown"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "value":Z
    :cond_6
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 194
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 195
    .restart local v0    # "value":Z
    const-string v1, "bugreport"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "value":Z
    :cond_7
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 198
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 199
    .restart local v0    # "value":Z
    const-string v1, "silent"

    invoke-direct {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "value":Z
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updatePreferences()V

    .line 159
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 108
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "reboot"

    invoke-direct {p0, v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "screenshot"

    invoke-direct {p0, v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mProfilePref:Landroid/preference/CheckBoxPreference;

    const-string v5, "profile"

    invoke-direct {p0, v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    const-string v5, "airplane"

    invoke-direct {p0, v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 125
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-nez v2, :cond_9

    .line 126
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "users"

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 137
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "settings"

    invoke-direct {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 141
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "lockdown"

    invoke-direct {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 145
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "bugreport"

    invoke-direct {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    :cond_7
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_8

    .line 149
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "silent"

    invoke-direct {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    :cond_8
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->updatePreferences()V

    .line 153
    return-void

    .line 128
    :cond_9
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_a

    move v0, v3

    .line 131
    .local v0, "enabled":Z
    :goto_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "users"

    invoke-direct {p0, v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_a
    move v0, v4

    .line 130
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_b
    move v3, v4

    .line 131
    goto :goto_2
.end method
