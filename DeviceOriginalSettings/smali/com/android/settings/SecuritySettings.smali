.class public Lcom/flyme/DeviceOriginalSettings/SecuritySettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 441
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 444
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 24

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 135
    .local v15, "root":Landroid/preference/PreferenceScreen;
    if-eqz v15, :cond_0

    .line 136
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 140
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 144
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mIsPrimary:Z

    .line 146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 147
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 149
    const v20, 0x7f060042

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 156
    :cond_1
    :goto_1
    const v20, 0x7f060044

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 159
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 160
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 161
    .local v11, "numPhones":I
    const/4 v6, 0x1

    .line 162
    .local v6, "disableLock":Z
    const/4 v14, 0x1

    .line 163
    .local v14, "removeLock":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v11, :cond_5

    .line 165
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 167
    const/4 v14, 0x0

    .line 168
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 171
    const/4 v6, 0x0

    .line 163
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 144
    .end local v6    # "disableLock":Z
    .end local v7    # "i":I
    .end local v11    # "numPhones":I
    .end local v14    # "removeLock":Z
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 152
    :cond_4
    const v20, 0x7f060049

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_1

    .line 175
    .restart local v6    # "disableLock":Z
    .restart local v7    # "i":I
    .restart local v11    # "numPhones":I
    .restart local v14    # "removeLock":Z
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-eqz v14, :cond_f

    .line 176
    :cond_6
    const-string v20, "sim_lock"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lock_to_app_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_8

    .line 184
    const-string v20, "screen_pinning_settings"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090c89

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    :cond_8
    const-string v20, "android.hardware.telephony"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 190
    .local v10, "isTelephony":Z
    if-eqz v10, :cond_9

    .line 191
    const-string v20, "sms_security_check_limit"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 195
    .local v16, "smsSecurityCheck":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 200
    .end local v16    # "smsSecurityCheck":I
    :cond_9
    const-string v20, "show_password"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 201
    const-string v20, "credentials_reset"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 203
    const-string v20, "sim_lock"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 205
    const-string v20, "sim_lock_settings"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 207
    .local v8, "iccLock":Landroid/preference/Preference;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v9, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    .line 209
    const-string v20, "com.android.settings"

    const-string v21, "com.android.settings.SelectSubscription"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v20, "PACKAGE"

    const-string v21, "com.android.settings"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v20, "TARGET_CLASS"

    const-string v21, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :goto_4
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 221
    .end local v8    # "iccLock":Landroid/preference/Preference;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "user"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 222
    .local v19, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 223
    const-string v20, "no_config_credentials"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 224
    const-string v20, "credential_storage_type"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 226
    .local v3, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v20

    if-eqz v20, :cond_11

    const v17, 0x7f0909fa

    .line 229
    .local v17, "storageSummaryRes":I
    :goto_5
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 239
    .end local v3    # "credentialStorageType":Landroid/preference/Preference;
    .end local v17    # "storageSummaryRes":I
    :goto_6
    const-string v20, "device_admin_category"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 241
    .local v5, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v20, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v20

    if-nez v20, :cond_13

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 247
    const-string v20, "no_install_unknown_sources"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "no_install_apps"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 249
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 253
    :cond_c
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v20

    if-nez v20, :cond_d

    .line 254
    const-string v20, "app_ops_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 255
    .local v2, "appOpsSummary":Landroid/preference/Preference;
    if-eqz v5, :cond_d

    .line 256
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    .end local v2    # "appOpsSummary":Landroid/preference/Preference;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/flyme/DeviceOriginalSettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/search/Index;

    move-result-object v20

    const-class v21, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/flyme/DeviceOriginalSettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 266
    const/4 v7, 0x0

    :goto_8
    sget-object v20, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_14

    .line 267
    sget-object v20, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v20, v20, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 268
    .local v13, "pref":Landroid/preference/Preference;
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 178
    .end local v5    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v10    # "isTelephony":Z
    .end local v13    # "pref":Landroid/preference/Preference;
    .end local v19    # "um":Landroid/os/UserManager;
    :cond_f
    if-eqz v6, :cond_7

    .line 179
    const-string v20, "sim_lock"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 215
    .restart local v8    # "iccLock":Landroid/preference/Preference;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "isTelephony":Z
    :cond_10
    const-string v20, "com.android.settings"

    const-string v21, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 226
    .end local v8    # "iccLock":Landroid/preference/Preference;
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v3    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v19    # "um":Landroid/os/UserManager;
    :cond_11
    const v17, 0x7f0909fb

    goto/16 :goto_5

    .line 231
    .end local v3    # "credentialStorageType":Landroid/preference/Preference;
    :cond_12
    const-string v20, "credentials_management"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 233
    .local v4, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v20, "credentials_reset"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    const-string v20, "credentials_install"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    const-string v20, "credential_storage_type"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 246
    .end local v4    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v5    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 271
    :cond_14
    return-object v15
.end method

.method public static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 316
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 319
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 320
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 318
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {v2, p0}, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    invoke-static {p0, v2}, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 324
    .local v5, "trustAgentComponentInfo":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 328
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 342
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 381
    const v1, 0x7f0900bd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090797

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 359
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 435
    const v0, 0x7f090bb5

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 363
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 364
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 365
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 366
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 370
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 364
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 125
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 375
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 378
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 410
    const/4 v1, 0x1

    .line 411
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "key":Ljava/lang/String;
    const-string v4, "show_password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    :cond_1
    :goto_0
    return v1

    .line 415
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "toggle_install_applications"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 418
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->warnAppInstallation()V

    .line 420
    const/4 v1, 0x0

    goto :goto_0

    .line 422
    :cond_3
    invoke-direct {p0, v3}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 424
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v3, "sms_security_check_limit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 426
    .local v2, "smsSecurityCheck":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sms_outgoing_check_max_count"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    invoke-direct {p0, v2}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 392
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 396
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 398
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 399
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 406
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 399
    goto :goto_0

    :cond_3
    move v1, v2

    .line 404
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 388
    return-void
.end method
