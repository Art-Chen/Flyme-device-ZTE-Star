.class public Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;
.super Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

.field private static mNumSlots:I

.field private static mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataDisableToastDisplayed:Z

.field private inActivity:Z

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mNumSims:I

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:J

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 522
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$4;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$4;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 78
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 79
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 83
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 84
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    .line 85
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 151
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$5;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$5;-><init>(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateCellularDataPreference()V

    return-void
.end method

.method static synthetic access$1100(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    return p1
.end method

.method static synthetic access$408(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    return v0
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$700(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$900(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method private createPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 187
    const v3, 0x7f06004b

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 189
    const-string v3, "select_primary_sub"

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 190
    const-string v3, "sim_enablers"

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 193
    .local v1, "simEnablers":Landroid/preference/PreferenceCategory;
    new-instance v3, Ljava/util/ArrayList;

    sget v4, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    sget v4, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v3, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v3, :cond_2

    .line 196
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 197
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    sget v3, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    if-le v3, v7, :cond_1

    .line 198
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v4, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v2, v6, v0}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 200
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    :goto_1
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v3, v7, :cond_0

    .line 206
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    .line 207
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const-string v3, "sim_enablers"

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 277
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 280
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 281
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 282
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 289
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 280
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 261
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 263
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 264
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 265
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 269
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 263
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 235
    move v0, p1

    .line 236
    .local v0, "i":I
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$2;-><init>(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 244
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 418
    const/4 v0, -0x1

    .line 420
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 424
    :goto_0
    return v0

    .line 422
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 374
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 377
    .local v1, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 380
    .local v3, "primarySetable":Z
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 383
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 384
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 386
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v3    # "primarySetable":Z
    :cond_1
    move v3, v8

    .line 377
    goto :goto_0

    .line 390
    .restart local v3    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v4

    .line 392
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 395
    .local v0, "isManualMode":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 396
    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    .line 397
    invoke-direct {p0, v4}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 398
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v6, :cond_4

    const/4 v2, 0x0

    .line 399
    .local v2, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 403
    .end local v2    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_4
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "isManualMode":Z
    :cond_3
    move v0, v8

    .line 392
    goto :goto_2

    .line 398
    .restart local v0    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 401
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 331
    const/4 v0, 0x1

    .line 332
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v0
.end method

.method private listen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 222
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 224
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 225
    aget v3, v1, v5

    if-lez v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCallState:[I

    aget v4, v1, v5

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    aput v4, v3, v0

    .line 227
    aget v3, v1, v5

    invoke-direct {p0, v0, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "subId":[I
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 143
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 146
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 248
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->createDropDown(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;)V

    .line 249
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->createDropDown(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;)V

    .line 250
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->createDropDown(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;)V

    .line 251
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateCellularDataValues()V

    .line 252
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateCallValues()V

    .line 253
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateSmsValues()V

    .line 254
    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 215
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateActivitesCategory()V

    .line 216
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateSimEnablers()V

    .line 217
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 342
    const-string v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .line 343
    .local v0, "simPref":Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 345
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 346
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0, v1, v5}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 349
    :cond_0
    iget v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setEnabled(Z)V

    .line 350
    return-void

    .line 343
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":J
    :cond_1
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 349
    goto :goto_1
.end method

.method private updateCellularDataPreference()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 313
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .line 314
    .local v1, "simPref":Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 316
    .local v0, "callStateIdle":Z
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setEnabled(Z)V

    .line 319
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->inActivity:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->dataDisableToastDisplayed:Z

    if-nez v2, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f09042e

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 322
    iput-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 325
    :cond_0
    if-ne v0, v3, :cond_1

    .line 326
    iput-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 328
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 316
    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 4

    .prologue
    .line 304
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .line 305
    .local v0, "simPref":Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 306
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateCellularDataPreference()V

    .line 310
    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 555
    sget-object v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    .line 556
    .local v1, "simEnabler":Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->update()V

    .line 554
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    .end local v1    # "simEnabler":Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    const-string v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .line 294
    .local v0, "simPref":Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 296
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 297
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0, v1, v5}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 300
    :cond_0
    iget v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setEnabled(Z)V

    .line 301
    return-void

    .line 294
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":J
    :cond_1
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 300
    goto :goto_1
.end method


# virtual methods
.method public createDropDown(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;)V
    .locals 12
    .param p1, "preference"    # Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .prologue
    const/4 v9, 0x1

    .line 439
    move-object v5, p1

    .line 440
    .local v5, "simPref":Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;
    invoke-virtual {v5}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "keyPref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 442
    .local v4, "mActCount":I
    const-string v10, "sim_calls"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "sim_sms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v0, v9

    .line 444
    .local v0, "askFirst":Z
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 445
    const-string v9, "SimSettings"

    const-string v10, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_1
    return-void

    .line 442
    .end local v0    # "askFirst":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    .restart local v0    # "askFirst":Z
    :cond_2
    invoke-virtual {v5}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->clearItems()V

    .line 451
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 452
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v8, :cond_3

    iget v10, v8, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v10, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 455
    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    if-eqz v0, :cond_5

    if-le v4, v9, :cond_5

    .line 456
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090c07

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    :cond_5
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 461
    .local v7, "subAvailableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v7, :cond_7

    .line 462
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 463
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_6

    .line 464
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 468
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_7
    new-instance v9, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$3;

    invoke-direct {v9, p0, v5}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings$3;-><init>(Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;)V

    invoke-virtual {v5, v9}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setCallback(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference$Callback;)V

    goto :goto_1
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 407
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 408
    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 409
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 414
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 407
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v2, "SimSettings"

    const-string v3, "on onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 107
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 110
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 114
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    .line 115
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneCount:I

    .line 116
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mCallState:[I

    .line 117
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 118
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->listen()V

    .line 120
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPreferredDataSubscription:J

    .line 122
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->createPreferences()V

    .line 123
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateAllOptions()V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->onDestroy()V

    .line 135
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 354
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->onPause()V

    .line 355
    iput-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->inActivity:Z

    .line 356
    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 359
    sget-object v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    .line 360
    .local v1, "simEnabler":Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "simEnabler":Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 430
    instance-of v0, p2, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    if-eqz v0, :cond_1

    .line 431
    check-cast p2, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->createEditDialog()V

    .line 435
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 432
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->onResume()V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->inActivity:Z

    .line 368
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->initLTEPreference()V

    .line 370
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;->updateAllOptions()V

    .line 371
    return-void
.end method
