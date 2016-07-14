.class public Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 481
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 484
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method private createPreferenceHierarchy()V
    .locals 21

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 136
    .local v13, "root":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 137
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 139
    :cond_0
    const v17, 0x7f06003f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 146
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v12

    .line 147
    .local v12, "resid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mIsPrimary:Z

    .line 152
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mIsPrimary:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 154
    const-string v17, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 155
    .local v9, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v9, :cond_1

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 157
    const v17, 0x7f090461

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 165
    .end local v9    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    const-string v17, "lock_after_timeout"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->setupLockAfterPreference()V

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->updateLockAfterPreferenceSummary()V

    .line 172
    :cond_2
    const-string v17, "biometric_weak_liveliness"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    .line 176
    const-string v17, "visiblepattern"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 179
    const-string v17, "power_button_instantly_locks"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActiveTrustAgentTitle()Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, "trustAgentName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090787

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    :cond_3
    const-string v17, "security_category"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 193
    .local v14, "securityCategory":Landroid/preference/PreferenceGroup;
    const v17, 0x7f060040

    move/from16 v0, v17

    if-ne v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v17

    const/high16 v18, 0x10000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 196
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 197
    const-string v17, "visiblepattern"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v17

    if-nez v17, :cond_5

    if-eqz v14, :cond_5

    .line 203
    const-string v17, "lockscreen_visualizer"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    .line 205
    .local v5, "displayVisualizer":Landroid/preference/SwitchPreference;
    if-eqz v5, :cond_5

    .line 206
    invoke-virtual {v14, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    .end local v5    # "displayVisualizer":Landroid/preference/SwitchPreference;
    :cond_5
    if-eqz v14, :cond_9

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v6

    .line 213
    .local v6, "hasSecurity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v4

    .line 215
    .local v4, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 216
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 217
    .local v3, "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual {v14}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 219
    .local v16, "trustAgentPreference":Landroid/preference/Preference;
    const-string v17, "trust_agent"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 220
    iget-object v0, v3, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, v3, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, v3, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 225
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 228
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 229
    if-nez v6, :cond_6

    .line 230
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    const v17, 0x7f0904ba

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(I)V

    .line 215
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 150
    .end local v3    # "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v6    # "hasSecurity":Z
    .end local v7    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v15    # "trustAgentName":Ljava/lang/String;
    .end local v16    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 159
    .restart local v9    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_8
    const v17, 0x7f09045f

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 236
    .end local v9    # "ownerInfoPref":Landroid/preference/Preference;
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v15    # "trustAgentName":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    sget-object v17, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_b

    .line 237
    sget-object v17, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v17, v17, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 238
    .local v11, "pref":Landroid/preference/Preference;
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 240
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_b
    return-void
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 333
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 334
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 335
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 338
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 339
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 340
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 345
    :cond_2
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 347
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 349
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 350
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 351
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 358
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 359
    return-void

    .line 358
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getActiveTrustAgentTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 243
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 244
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v4, v5}, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 247
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 248
    .local v0, "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v4, v0, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, v0, Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 253
    .end local v0    # "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    :goto_1
    return-object v4

    .line 246
    .restart local v0    # "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "agent":Lcom/flyme/DeviceOriginalSettings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 260
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 261
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 262
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 264
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const v1, 0x7f060043

    .line 288
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 262
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 267
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f060041

    goto :goto_1

    .line 269
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    const v1, 0x7f060040

    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 275
    :sswitch_0
    const v1, 0x7f060046

    .line 276
    goto :goto_1

    .line 279
    :sswitch_1
    const v1, 0x7f060048

    .line 280
    goto :goto_1

    .line 284
    :sswitch_2
    const v1, 0x7f060045

    goto :goto_1

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 296
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 297
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 298
    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 299
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 301
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 305
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->disableUnusableTimeouts(J)V

    .line 307
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 298
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 313
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 314
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 315
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 316
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 317
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 318
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 319
    move v0, v4

    .line 316
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    .end local v6    # "timeout":J
    :cond_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActiveTrustAgentTitle()Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "trustAgentName":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 325
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090457

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    :goto_1
    return-void

    .line 328
    :cond_2
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090456

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 371
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->startBiometricWeakImprove()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 377
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 378
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 383
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 384
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 390
    :cond_3
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->createPreferenceHierarchy()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    .line 109
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 113
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 395
    const/4 v4, 0x1

    .line 396
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 398
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v6, "lock_after_timeout"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 401
    .local v5, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_after_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->updateLockAfterPreferenceSummary()V

    .line 434
    .end local v5    # "timeout":I
    :cond_0
    :goto_1
    return v4

    .line 403
    .restart local v5    # "timeout":I
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "SecuritySettings"

    const-string v7, "could not persist lockAfter timeout setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v6, "lockenabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 409
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v6, "visiblepattern"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 410
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 411
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v6, "biometric_weak_liveliness"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 412
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 413
    invoke-virtual {v3, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 418
    :cond_4
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 419
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, p0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 421
    .local v1, "helper":Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;
    const/16 v6, 0x7d

    invoke-virtual {v1, v6, v9, v9}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 427
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 428
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 431
    .end local v1    # "helper":Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v6, "power_button_instantly_locks"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 439
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f090480

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 467
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 443
    :cond_1
    const-string v0, "biometric_weak_improve_matching"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    new-instance v6, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 446
    .local v6, "helper":Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;
    const/16 v0, 0x7c

    invoke-virtual {v6, v0, v5, v5}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 454
    .end local v6    # "helper":Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;
    :cond_2
    const-string v0, "trust_agent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    new-instance v6, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 457
    .restart local v6    # "helper":Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 458
    const/16 v0, 0x7e

    invoke-virtual {v6, v0, v5, v5}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 462
    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 465
    .end local v6    # "helper":Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->createPreferenceHierarchy()V

    .line 121
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 122
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 472
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 473
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 476
    :cond_0
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method
