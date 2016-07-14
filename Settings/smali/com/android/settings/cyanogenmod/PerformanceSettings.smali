.class public Lcom/android/settings/cyanogenmod/PerformanceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PerformanceSettings.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mForceHighEndGfx:Landroid/preference/SwitchPreference;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/PerformanceSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cyanogenmod/PerformanceSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private showAdvancedPerfSettings()Z
    .locals 4

    .prologue
    .line 110
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 77
    const v3, 0x7f060031

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 85
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "perf_profile_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 86
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :goto_0
    const-string v3, "perf_system_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 94
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->showAdvancedPerfSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    :cond_0
    const-string v3, "perf_graphics_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 99
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->showAdvancedPerfSettings()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const-string v3, "pref_force_highend_gfx"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    .line 101
    const-string v3, "persist.sys.force_highendgfx"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "forceHighendGfx":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    .end local v1    # "forceHighendGfx":Ljava/lang/String;
    :goto_1
    return-void

    .line 89
    :cond_1
    const-string v3, "perf_system_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    const-string v4, "processor"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 144
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    .line 149
    const-string v1, "persist.sys.force_highendgfx"

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 149
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 153
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_dragons_awesome"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    .local v0, "warned":Z
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->showAdvancedPerfSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 125
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f09027d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09027e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/PerformanceSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/PerformanceSettings$1;-><init>(Lcom/android/settings/cyanogenmod/PerformanceSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 139
    :cond_0
    return-void
.end method
