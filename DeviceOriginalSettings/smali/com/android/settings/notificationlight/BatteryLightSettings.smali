.class public Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

.field private mLowColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 81
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_0

    .line 84
    const-string v5, "battery_light_low_color"

    const v6, 0x10e004a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "lowColor":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v1, v7, v7, v7}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 89
    .end local v1    # "lowColor":I
    :cond_0
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_1

    .line 90
    const-string v5, "battery_light_medium_color"

    const v6, 0x10e004b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "mediumColor":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v2, v7, v7, v7}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 95
    .end local v2    # "mediumColor":I
    :cond_1
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_2

    .line 96
    const-string v5, "battery_light_full_color"

    const v6, 0x10e004c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, "fullColor":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v0, v7, v7, v7}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 100
    .end local v0    # "fullColor":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    .line 59
    const-string v1, "low_color"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    .line 60
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string v1, "medium_color"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    .line 63
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v1, "full_color"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    .line 66
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v1, "colors_list"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->resetColors()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 122
    const/4 v0, 0x1

    const v1, 0x7f09002a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->resetColors()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 154
    move-object v0, p1

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;

    .line 155
    .local v0, "lightPref":Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 77
    return-void
.end method

.method protected resetColors()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 140
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "battery_light_low_color"

    const v3, 0x10e004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    const-string v2, "battery_light_medium_color"

    const v3, 0x10e004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    const-string v2, "battery_light_full_color"

    const v3, 0x10e004c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 150
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 115
    :cond_2
    const-string v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
