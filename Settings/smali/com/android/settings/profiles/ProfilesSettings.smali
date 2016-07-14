.class public Lcom/android/settings/profiles/ProfilesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;


# instance fields
.field private mAddProfileFab:Landroid/view/View;

.field mContainer:Landroid/view/ViewGroup;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/android/settings/profiles/ProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/profiles/ProfilesSettings$1;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->addProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/ProfilesSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method private addProfile()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 221
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "new_profile_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    const-string v1, "Profile"

    new-instance v4, Landroid/app/Profile;

    const v5, 0x7f090026

    invoke-virtual {p0, v5}, Lcom/android/settings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 226
    .local v0, "pa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 228
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901c6

    new-instance v2, Lcom/android/settings/profiles/ProfilesSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/ProfilesSettings$3;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 319
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 320
    .local v1, "selectedUuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "selectedUuid":Ljava/util/UUID;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateProfilesEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "system_profiles_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 257
    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-nez v1, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 263
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 253
    goto :goto_0

    .line 257
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->refreshList()V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfilesSettings;->addPreferencesFromResource(I)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 198
    const/4 v0, 0x1

    const v1, 0x7f09002a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    const/4 v0, 0x2

    const v1, 0x7f0901d7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 193
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "profile_state"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v1, "u":Landroid/content/Intent;
    const-string v2, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    return-void

    .line 268
    .end local v1    # "u":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 210
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->resetAll()V

    move v0, v6

    .line 211
    goto :goto_0

    .line 213
    :pswitch_1
    const-class v0, Lcom/android/settings/profiles/AppGroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901d7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/profiles/ProfilesSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 215
    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;->pause()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 310
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/profiles/ProfilesSettings;->setSelectedProfile(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->refreshList()V

    .line 314
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    .line 168
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 183
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v0, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    const-string v3, "system_profiles_enabled"

    const/4 v4, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 185
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 127
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040057

    invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 129
    .local v2, "footer":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005a

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v5, v6, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 136
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f1000ef

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    .local v0, "emptyTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005f

    iget-object v7, p0, Lcom/android/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "fab":Landroid/view/View;
    const v5, 0x7f1000fb

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    .line 142
    iget-object v5, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAddProfileFab:Landroid/view/View;

    new-instance v6, Lcom/android/settings/profiles/ProfilesSettings$2;

    invoke-direct {v6, p0}, Lcom/android/settings/profiles/ProfilesSettings$2;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public refreshList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 282
    .local v4, "plist":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 285
    iget-object v9, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v9}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v6

    .line 286
    .local v6, "prof":Landroid/app/Profile;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "selectedKey":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v9}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v1

    .local v1, "arr$":[Landroid/app/Profile;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v1, v2

    .line 289
    .local v7, "profile":Landroid/app/Profile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "Profile"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    const-string v9, "new_profile_mode"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    new-instance v5, Lcom/android/settings/profiles/ProfilesPreference;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/profiles/ProfilesPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 294
    .local v5, "ppref":Lcom/android/settings/profiles/ProfilesPreference;
    invoke-virtual {v7}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/settings/profiles/ProfilesPreference;->setKey(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/settings/profiles/ProfilesPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v5, v11}, Lcom/android/settings/profiles/ProfilesPreference;->setPersistent(Z)V

    .line 297
    invoke-virtual {v5, p0}, Lcom/android/settings/profiles/ProfilesPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 298
    invoke-virtual {v5, v10}, Lcom/android/settings/profiles/ProfilesPreference;->setSelectable(Z)V

    .line 299
    invoke-virtual {v5, v10}, Lcom/android/settings/profiles/ProfilesPreference;->setEnabled(Z)V

    .line 301
    invoke-virtual {v5}, Lcom/android/settings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 302
    invoke-virtual {v5, v10}, Lcom/android/settings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 305
    :cond_0
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "arr$":[Landroid/app/Profile;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "ppref":Lcom/android/settings/profiles/ProfilesPreference;
    .end local v7    # "profile":Landroid/app/Profile;
    .end local v8    # "selectedKey":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 307
    .restart local v1    # "arr$":[Landroid/app/Profile;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v8    # "selectedKey":Ljava/lang/String;
    :cond_2
    return-void
.end method
