.class public Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;,
        Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;,
        Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEBUG:Z

.field private static final PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

.field private static final PREF_ZEN_MUSIC_NOTIFICATIONS:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomationCategory:Landroid/preference/PreferenceCategory;

.field private mCalls:Landroid/preference/SwitchPreference;

.field private mConditionProviders:Landroid/preference/Preference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDays:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

.field private mDowntimeSupported:Z

.field private mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

.field private mEntry:Landroid/preference/Preference;

.field private mEvents:Landroid/preference/SwitchPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;

.field private mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

.field private mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 67
    const-string v0, "ZenModeSettings"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DEBUG:Z

    .line 88
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$1;

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    .line 104
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$2;

    const-string v2, "music_interruptions"

    const-string v3, "zen_disable_ducking_during_media_playback"

    new-array v5, v1, [I

    aput v1, v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MUSIC_NOTIFICATIONS:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 588
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$16;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$16;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void

    .line 88
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mSettingsObserver:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;

    .line 704
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->refreshAutomationSection()V

    return-void
.end method

.method static synthetic access$702(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 123
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f090c68

    const-string v2, "important"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    const v1, 0x7f090c73

    const-string v2, "calls"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    const v1, 0x7f090c37

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    const v1, 0x7f090c74

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    const v1, 0x7f090c78

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    const v1, 0x7f090c79

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    const v1, 0x7f090c7a

    const-string v2, "alarm_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    const v1, 0x7f090c69

    const-string v2, "downtime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    const v1, 0x7f090c6a

    const-string v2, "days"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    const v1, 0x7f090c7f

    const-string v2, "start_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const v1, 0x7f090c80

    const-string v2, "end_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    const v1, 0x7f090c6c

    const-string v2, "downtime_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    const v1, 0x7f090c6f

    const-string v2, "automation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    const v1, 0x7f090c57

    const-string v2, "manage_condition_providers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    return-object v0
.end method

.method private getEntryConditionSummary()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 468
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    .line 471
    .local v4, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v0

    .line 472
    .local v0, "automatic":[Landroid/service/notification/Condition;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 484
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_0
    :goto_0
    return-object v6

    .line 475
    .restart local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_1
    const v7, 0x7f090c71

    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "divider":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 478
    if-lez v3, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_2
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 481
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 482
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    .end local v1    # "divider":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ZenModeSettings"

    const-string v8, "Error calling getAutomaticZenModeConditions"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 510
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 513
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 516
    :goto_0
    return-object v2

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private static isDowntimeSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 583
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "downtime"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private refreshAutomationSection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 443
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->getProviderCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 445
    .local v2, "total":I
    if-nez v2, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->getEnabledProviderCount(Landroid/content/Context;)I

    move-result v1

    .line 449
    .local v1, "n":I
    if-nez v1, :cond_3

    .line 450
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c58

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    :goto_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getEntryConditionSummary()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "entrySummary":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 459
    :cond_2
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    const v4, 0x7f090c72

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 453
    .end local v0    # "entrySummary":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e000d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 461
    .restart local v0    # "entrySummary":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 521
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 524
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 525
    .local v2, "success":Z
    if-eqz v2, :cond_1

    .line 526
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 527
    sget-boolean v3, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateEndSummary()V

    .line 529
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDisableListeners:Z

    .line 420
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 426
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateStarredEnabled()V

    .line 427
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-eqz v0, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateDays()V

    .line 429
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 430
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 431
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 433
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDisableListeners:Z

    .line 434
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->refreshAutomationSection()V

    .line 435
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateEndSummary()V

    .line 436
    return-void
.end method

.method private updateDays()V
    .locals 8

    .prologue
    .line 373
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_4

    .line 374
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 375
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-eqz v6, :cond_4

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 378
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 379
    sget-object v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 380
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 381
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 382
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 384
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090c71

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_0
    sget-object v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 391
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 392
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 400
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "days":[I
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 398
    :cond_4
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f090c6b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 399
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 403
    iget-boolean v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v5, :cond_0

    .line 416
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int v2, v5, v6

    .line 405
    .local v2, "startMin":I
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int v0, v5, v6

    .line 406
    .local v0, "endMin":I
    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    .line 408
    .local v1, "nextDay":Z
    :goto_1
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eqz v5, :cond_3

    .line 409
    if-eqz v1, :cond_2

    const v3, 0x7f090c83

    .line 415
    .local v3, "summaryFormat":I
    :goto_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setSummaryFormat(I)V

    goto :goto_0

    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_1
    move v1, v4

    .line 406
    goto :goto_1

    .line 409
    .restart local v1    # "nextDay":Z
    :cond_2
    const v3, 0x7f090c82

    goto :goto_2

    .line 412
    :cond_3
    if-eqz v1, :cond_4

    const v3, 0x7f090c81

    .restart local v3    # "summaryFormat":I
    :goto_3
    goto :goto_2

    .end local v3    # "summaryFormat":I
    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setEnabled(Z)V

    .line 440
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 503
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 505
    sget-boolean v1, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1, "oldSettingsValue"    # I

    .prologue
    .line 578
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 580
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 165
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 167
    const v5, 0x7f060067

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 168
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 170
    .local v4, "root":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 171
    sget-boolean v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZenModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded mConfig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    sget-object v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v5, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->init(Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 174
    sget-object v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$3;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$3;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->setCallback(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V

    .line 183
    sget-object v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MUSIC_NOTIFICATIONS:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v5, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->init(Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v3

    .line 185
    .local v3, "musicNotifications":Landroid/preference/Preference;
    const-string v5, "important"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 188
    .local v1, "important":Landroid/preference/PreferenceCategory;
    const-string v5, "calls"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    .line 189
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$4;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$4;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    const-string v5, "messages"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    .line 203
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$5;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$5;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    const-string v5, "starred"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .line 217
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    const v6, 0x7f090c76

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 218
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    const v6, 0x7f090c78

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 219
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    const v6, 0x7f090c77

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 220
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$6;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setCallback(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference$Callback;)V

    .line 233
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStarred:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    const-string v5, "events"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 236
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$7;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$7;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    const-string v5, "downtime"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 250
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    .line 251
    iget-boolean v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v5, :cond_1

    .line 252
    const-string v5, "downtime"

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 348
    :goto_0
    const-string v5, "automation"

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    .line 349
    const-string v5, "entry"

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    .line 350
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$12;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 367
    const-string v5, "manage_condition_providers"

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    .line 369
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateControls()V

    .line 370
    return-void

    .line 254
    :cond_1
    const-string v5, "days"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    .line 255
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$8;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$8;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 285
    .local v2, "mgr":Landroid/app/FragmentManager;
    new-instance v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    .line 286
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    const-string v6, "start_time"

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 287
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    const v6, 0x7f090c7f

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 288
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$9;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$9;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 304
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mStart:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 307
    new-instance v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    .line 308
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    const-string v6, "end_time"

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 309
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    const v6, 0x7f090c80

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 310
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$10;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$10;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 326
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mEnd:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 329
    const-string v5, "downtime_mode"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    .line 330
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    const v6, 0x7f090c6d

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 331
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    const v6, 0x7f090c6e

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 332
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$11;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$11;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setCallback(Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference$Callback;)V

    .line 344
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setOrder(I)V

    .line 345
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDowntimeMode:Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/flyme/DeviceOriginalSettings/notification/DropDownPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 498
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mSettingsObserver:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;->unregister()V

    .line 499
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 491
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->updateControls()V

    .line 492
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mSettingsObserver:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingsObserver;->register()V

    .line 493
    return-void
.end method

.method protected showConditionSelection(I)V
    .locals 7
    .param p1, "newSettingsValue"    # I

    .prologue
    .line 543
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 574
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v3, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 547
    .local v3, "zenModeConditionSelection":Lcom/flyme/DeviceOriginalSettings/notification/ZenModeConditionSelection;
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$13;

    invoke-direct {v1, p0, v3}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$13;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;Lcom/flyme/DeviceOriginalSettings/notification/ZenModeConditionSelection;)V

    .line 554
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 555
    .local v0, "oldSettingsValue":I
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 556
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 557
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090422

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090420

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;

    invoke-direct {v6, p0, v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$14;

    invoke-direct {v5, p0, v0}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$14;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 573
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
