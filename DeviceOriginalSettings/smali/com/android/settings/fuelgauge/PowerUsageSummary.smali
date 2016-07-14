.class public Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;
    }
.end annotation


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryPluggedIn:Z

.field private mBatterySaverPref:Landroid/preference/SwitchPreference;

.field private mBatteryStatus:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

.field private mPerfProfileEntries:[Ljava/lang/String;

.field private mPerfProfilePref:Landroid/preference/ListPreference;

.field private mPerfProfileValues:[Ljava/lang/String;

.field private mPerformanceProfileObserver:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStatsType:I

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    .line 110
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 364
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f090926

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 366
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;->setHideLabels(Z)V

    .line 367
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    return-void
.end method

.method private isBatteryPluggedIn(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 386
    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "status":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshBatterySaverOptions()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 355
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 357
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    if-eqz v0, :cond_3

    const v0, 0x7f09031e

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 361
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 355
    goto :goto_0

    :cond_2
    move v1, v2

    .line 356
    goto :goto_1

    .line 357
    :cond_3
    const v0, 0x7f09031d

    goto :goto_2
.end method

.method private refreshStats()V
    .locals 30

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 419
    new-instance v24, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v27

    invoke-direct/range {v24 .. v27}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    const/4 v4, 0x0

    .line 425
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v13

    .line 426
    .local v13, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v21

    .line 427
    .local v21, "stats":Landroid/os/BatteryStats;
    const-string v24, "screen.full"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 428
    .local v6, "averagePower":D
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpl-double v24, v6, v24

    if-ltz v24, :cond_6

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v19

    .line 431
    .local v19, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v22

    .line 435
    .local v22, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v9

    .line 436
    .local v9, "dischargeAmount":I
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v12

    .line 437
    .local v12, "numSippers":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_6

    .line 438
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    .line 439
    .local v20, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    const-wide v26, 0x40ac200000000000L    # 3600.0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    .line 437
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 435
    .end local v9    # "dischargeAmount":I
    .end local v11    # "i":I
    .end local v12    # "numSippers":I
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 442
    .restart local v9    # "dischargeAmount":I
    .restart local v11    # "i":I
    .restart local v12    # "numSippers":I
    .restart local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v26

    div-double v24, v24, v26

    int-to-double v0, v9

    move-wide/from16 v26, v0

    mul-double v16, v24, v26

    .line 444
    .local v16, "percentOfTotal":D
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v16

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 447
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 450
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v26, v26, v28

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_0

    .line 453
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpg-double v24, v16, v24

    if-ltz v24, :cond_0

    .line 456
    const-string v24, "user"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "userdebug"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 460
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 463
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_0

    .line 466
    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    cmpg-double v24, v16, v24

    if-ltz v24, :cond_0

    .line 469
    const-string v24, "user"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "userdebug"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 473
    :cond_4
    new-instance v23, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    .line 474
    .local v23, "userHandle":Landroid/os/UserHandle;
    new-instance v10, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 475
    .local v10, "entry":Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual {v10}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 477
    .local v5, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual {v10}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 479
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    new-instance v18, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5, v8, v10}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;)V

    .line 482
    .local v18, "pref":Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v26

    div-double v14, v24, v26

    .line 483
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 484
    invoke-virtual {v10}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 485
    add-int/lit8 v24, v11, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 486
    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 487
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 488
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 490
    :cond_5
    const/4 v4, 0x1

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 497
    .end local v5    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "contentDescription":Ljava/lang/CharSequence;
    .end local v9    # "dischargeAmount":I
    .end local v10    # "entry":Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;
    .end local v11    # "i":I
    .end local v12    # "numSippers":I
    .end local v14    # "percentOfMax":D
    .end local v16    # "percentOfTotal":D
    .end local v18    # "pref":Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v22    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v23    # "userHandle":Landroid/os/UserHandle;
    :cond_6
    if-nez v4, :cond_7

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 501
    :cond_7
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 502
    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 371
    if-eqz p1, :cond_1

    .line 372
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/flyme/DeviceOriginalSettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "batteryStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    :cond_0
    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    .line 378
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->isBatteryPluggedIn(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryPluggedIn:Z

    .line 379
    const/4 v2, 0x1

    .line 382
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updatePerformanceSummary()V
    .locals 8

    .prologue
    .line 393
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "value":Ljava/lang/String;
    const-string v2, ""

    .line 395
    .local v2, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    array-length v0, v4

    .line 396
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    :try_start_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    aget-object v2, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    return-void

    .line 401
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updatePerformanceValue()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updatePerformanceSummary()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 138
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 139
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    .line 140
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    .line 153
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 154
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 157
    const-string v0, "pref_perf_profile"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 158
    const-string v0, "low_power"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    .line 159
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const-string v0, "pref_perf_profile"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 161
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 173
    :cond_0
    :goto_0
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;-><init>(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    .line 174
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "low_power"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 165
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    .line 166
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 167
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfileValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 169
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    .line 170
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x0

    .line 275
    const/4 v4, 0x2

    const v5, 0x7f09097d

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x10803fe

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 278
    .local v3, "refresh":Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 281
    const/4 v4, 0x3

    const v5, 0x7f09031c

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 283
    .local v0, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 286
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090bad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "helpUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    const/4 v4, 0x4

    const v5, 0x7f090ba6

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 288
    .local v1, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/flyme/DeviceOriginalSettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 290
    .end local v1    # "help":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 227
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 229
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 231
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v13, 0x64

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    move v8, v9

    .line 349
    :goto_0
    return v8

    .line 296
    :pswitch_0
    iget v10, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v10, :cond_0

    .line 297
    const/4 v9, 0x2

    iput v9, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 301
    :goto_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 299
    :cond_0
    iput v9, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 304
    :pswitch_1
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 305
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 306
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 309
    :pswitch_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 311
    .local v4, "res":Landroid/content/res/Resources;
    const v10, 0x10e0046

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 313
    .local v1, "defWarnLevel":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "low_power_trigger_level"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 316
    .local v7, "value":I
    const/4 v5, -0x1

    .line 317
    .local v5, "selectedIndex":I
    const v10, 0x7f0c0066

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 318
    .local v3, "intVals":[I
    array-length v10, v3

    new-array v6, v10, [Ljava/lang/String;

    .line 319
    .local v6, "strVals":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v10, v3

    if-ge v2, v10, :cond_3

    .line 320
    aget v10, v3, v2

    if-ne v10, v7, :cond_1

    .line 321
    move v5, v2

    .line 323
    :cond_1
    aget v10, v3, v2

    if-lez v10, :cond_2

    aget v10, v3, v2

    if-ge v10, v13, :cond_2

    .line 324
    const v10, 0x7f090983

    new-array v11, v8, [Ljava/lang/Object;

    aget v12, v3, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v4, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    .line 319
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 327
    :cond_2
    const v10, 0x7f090982

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    goto :goto_3

    .line 332
    :cond_3
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f090981

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v10, p0, v3}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;[I)V

    invoke-virtual {v9, v6, v5, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0901c6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 208
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 212
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 216
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 258
    if-eqz p2, :cond_0

    .line 259
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerProfile(Ljava/lang/String;)Z

    .line 261
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updatePerformanceSummary()V

    .line 262
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 235
    instance-of v1, p2, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 237
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "stats"

    const-string v3, "tmp_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "broadcast"

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    .line 242
    .local v0, "sa":Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    const-class v1, Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09093f

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 244
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 253
    .end local v0    # "sa":Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return v1

    .line 246
    :cond_0
    instance-of v1, p2, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_1

    .line 247
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move-object v8, p2

    .line 249
    check-cast v8, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;

    .line 250
    .local v8, "pgp":Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v8}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;

    move-result-object v7

    .line 251
    .local v7, "entry":Lcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v7, v5}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/flyme/DeviceOriginalSettings/fuelgauge/BatteryEntry;Z)V

    .line 253
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 184
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tmp_bat_history.bin"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 188
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 194
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V

    .line 196
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "performance_profile"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mPerformanceProfileObserver:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V

    .line 203
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 179
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 180
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 221
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    return-void
.end method
